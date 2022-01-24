#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ len; } ;
struct snmp_value {TYPE_1__ var; } ;
struct snmp_node {scalar_t__ type; TYPE_1__ oid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FIND ; 
 scalar_t__ SNMP_NODE_LEAF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  oidbuf ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 struct snmp_node* tree ; 
 int tree_size ; 

__attribute__((used)) static struct snmp_node *
FUNC5(const struct snmp_value *value, int *pnext)
{
	struct snmp_node *tp;

	if (FUNC0(FIND))
		FUNC4("next: searching %s",
		    FUNC3(&value->var, oidbuf));

	*pnext = 0;
	for (tp = tree; tp < tree + tree_size; tp++) {
		if (FUNC2(&tp->oid, &value->var)) {
			/* the tree OID is a sub-oid of the requested OID. */
			if (tp->type == SNMP_NODE_LEAF) {
				if (tp->oid.len == value->var.len) {
					/* request for scalar type */
					if (FUNC0(FIND))
						FUNC4("next: found scalar %s",
						    FUNC3(&tp->oid, oidbuf));
					return (tp);
				}
				/* try next */
			} else {
				if (FUNC0(FIND))
					FUNC4("next: found column %s",
					    FUNC3(&tp->oid, oidbuf));
				return (tp);
			}
		} else if (FUNC2(&value->var, &tp->oid) ||
		    FUNC1(&tp->oid, &value->var) >= 0) {
			if (FUNC0(FIND))
				FUNC4("next: found %s",
				    FUNC3(&tp->oid, oidbuf));
			*pnext = 1;
			return (tp);
		}
	}

	if (FUNC0(FIND))
		FUNC4("next: failed");

	return (NULL);
}