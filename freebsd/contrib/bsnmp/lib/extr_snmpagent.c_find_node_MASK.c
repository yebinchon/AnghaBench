#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int len; scalar_t__* subs; } ;
struct snmp_value {TYPE_1__ var; } ;
struct TYPE_7__ {int len; } ;
struct snmp_node {scalar_t__ type; TYPE_2__ oid; } ;
typedef  enum snmp_syntax { ____Placeholder_snmp_syntax } snmp_syntax ;

/* Variables and functions */
 int /*<<< orphan*/  FIND ; 
 scalar_t__ SNMP_NODE_LEAF ; 
 int SNMP_SYNTAX_NOSUCHINSTANCE ; 
 int SNMP_SYNTAX_NOSUCHOBJECT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*,TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  oidbuf ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 struct snmp_node* tree ; 
 int tree_size ; 

__attribute__((used)) static struct snmp_node *
FUNC5(const struct snmp_value *value, enum snmp_syntax *errp)
{
	struct snmp_node *tp;

	if (FUNC0(FIND))
		FUNC4("find: searching %s",
		    FUNC3(&value->var, oidbuf));

	/*
	 * If we have an exact match (the entry in the table is a
	 * sub-oid from the variable) we have found what we are for.
	 * If the table oid is higher than the variable, there is no match.
	 */
	for (tp = tree; tp < tree + tree_size; tp++) {
		if (FUNC2(&tp->oid, &value->var))
			goto found;
		if (FUNC1(&tp->oid, &value->var) >= 0)
			break;
	}

	if (FUNC0(FIND))
		FUNC4("find: no match");
	*errp = SNMP_SYNTAX_NOSUCHOBJECT;
	return (NULL);

  found:
	/* leafs must have a 0 instance identifier */
	if (tp->type == SNMP_NODE_LEAF &&
	    (value->var.len != tp->oid.len + 1 ||
	     value->var.subs[tp->oid.len] != 0)) {
		if (FUNC0(FIND))
			FUNC4("find: bad leaf index");
		*errp = SNMP_SYNTAX_NOSUCHINSTANCE;
		return (NULL);
	}
	if (FUNC0(FIND))
		FUNC4("find: found %s",
		    FUNC3(&value->var, oidbuf));
	return (tp);
}