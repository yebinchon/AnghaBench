#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  len; scalar_t__* subs; } ;
struct snmp_value {int /*<<< orphan*/  syntax; TYPE_1__ var; } ;
struct snmp_pdu {scalar_t__ version; int error_status; } ;
struct snmp_node {scalar_t__ type; int (* op ) (int /*<<< orphan*/ *,struct snmp_value*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;TYPE_1__ oid; int /*<<< orphan*/  index; int /*<<< orphan*/  syntax; } ;
struct context {int /*<<< orphan*/  ctx; } ;
typedef  enum snmp_ret { ____Placeholder_snmp_ret } snmp_ret ;

/* Variables and functions */
 int /*<<< orphan*/  GETNEXT ; 
 int SNMP_ERR_GENERR ; 
 int SNMP_ERR_NOERROR ; 
 int SNMP_ERR_NOSUCHNAME ; 
 scalar_t__ SNMP_NODE_LEAF ; 
 int /*<<< orphan*/  SNMP_OP_GET ; 
 int /*<<< orphan*/  SNMP_OP_GETNEXT ; 
 int SNMP_RET_ERR ; 
 int SNMP_RET_OK ; 
 int /*<<< orphan*/  SNMP_SYNTAX_ENDOFMIBVIEW ; 
 scalar_t__ SNMP_V1 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 struct snmp_node* FUNC2 (struct snmp_value const*,int*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,...) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct snmp_value*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct snmp_value*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct snmp_node const* tree ; 
 int tree_size ; 

__attribute__((used)) static enum snmp_ret
FUNC6(struct context *context, const struct snmp_value *inb,
    struct snmp_value *outb, struct snmp_pdu *pdu)
{
	const struct snmp_node *tp;
	int ret, next;

	if ((tp = FUNC2(inb, &next)) == NULL)
		goto eofMib;

	/* retain old variable if we are doing a GETNEXT on an exact
	 * matched leaf only */
	if (tp->type == SNMP_NODE_LEAF || next)
		outb->var = tp->oid;
	else
		outb->var = inb->var;

	for (;;) {
		outb->syntax = tp->syntax;
		if (tp->type == SNMP_NODE_LEAF) {
			/* make a GET operation */
			outb->var.subs[outb->var.len++] = 0;
			ret = (*tp->op)(&context->ctx, outb, tp->oid.len,
			    tp->index, SNMP_OP_GET);
		} else {
			/* make a GETNEXT */
			ret = (*tp->op)(&context->ctx, outb, tp->oid.len,
			     tp->index, SNMP_OP_GETNEXT);
		}
		if (ret != SNMP_ERR_NOSUCHNAME) {
			/* got something */
			if (ret != SNMP_ERR_NOERROR && FUNC0(GETNEXT))
				FUNC3("getnext: %s returns %u",
				    FUNC1(&outb->var), ret);
			break;
		}

		/* object has no data - try next */
		if (++tp == tree + tree_size)
			break;

		if (FUNC0(GETNEXT))
			FUNC3("getnext: no data - avancing to %s",
			    FUNC1(&tp->oid));

		outb->var = tp->oid;
	}

	if (ret == SNMP_ERR_NOSUCHNAME) {
  eofMib:
		outb->var = inb->var;
		if (pdu->version == SNMP_V1) {
			pdu->error_status = SNMP_ERR_NOSUCHNAME;
			return (SNMP_RET_ERR);
		}
		outb->syntax = SNMP_SYNTAX_ENDOFMIBVIEW;

	} else if (ret != SNMP_ERR_NOERROR) {
		pdu->error_status = SNMP_ERR_GENERR;
		return (SNMP_RET_ERR);
	}
	return (SNMP_RET_OK);
}