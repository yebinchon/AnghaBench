#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int8_t ;
typedef  int /*<<< orphan*/  u_int32_t ;
typedef  int u_int ;
struct TYPE_10__ {int /*<<< orphan*/  index; } ;
struct udp_port {TYPE_3__ tport; } ;
struct TYPE_9__ {int integer; } ;
struct TYPE_11__ {int* subs; } ;
struct snmp_value {TYPE_2__ v; TYPE_4__ var; } ;
struct snmp_context {TYPE_1__* scratch; } ;
typedef  enum snmp_op { ____Placeholder_snmp_op } snmp_op ;
typedef  int asn_subid_t ;
struct TYPE_8__ {int int1; int int2; } ;

/* Variables and functions */
#define  LEAF_begemotSnmpdPortStatus 133 
 int SNMP_ERR_NOERROR ; 
 int SNMP_ERR_NOSUCHNAME ; 
 int SNMP_ERR_NO_CREATION ; 
 int SNMP_ERR_WRONG_VALUE ; 
#define  SNMP_OP_COMMIT 132 
#define  SNMP_OP_GET 131 
#define  SNMP_OP_GETNEXT 130 
#define  SNMP_OP_ROLLBACK 129 
#define  SNMP_OP_SET 128 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  my_trans ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,TYPE_4__*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct udp_port**) ; 

int
FUNC9(struct snmp_context *ctx, struct snmp_value *value,
    u_int sub, u_int iidx, enum snmp_op op)
{
	asn_subid_t which = value->var.subs[sub-1];
	struct udp_port *p;
	u_int8_t addr[4];
	u_int32_t port;

	switch (op) {

	  case SNMP_OP_GETNEXT:
		if ((p = (struct udp_port *)FUNC6(my_trans,
		    &value->var, sub)) == NULL)
			return (SNMP_ERR_NOSUCHNAME);
		FUNC3(&value->var, sub, &p->tport.index);
		break;

	  case SNMP_OP_GET:
		if ((p = (struct udp_port *)FUNC5(my_trans,
		    &value->var, sub)) == NULL)
			return (SNMP_ERR_NOSUCHNAME);
		break;

	  case SNMP_OP_SET:
		p = (struct udp_port *)FUNC5(my_trans,
		    &value->var, sub);
		ctx->scratch->int1 = (p != NULL);

		if (which != LEAF_begemotSnmpdPortStatus)
			FUNC2();
		if (!FUNC1(value->v.integer))
			return (SNMP_ERR_WRONG_VALUE);

		ctx->scratch->int2 = FUNC0(value->v.integer);

		if (ctx->scratch->int2) {
			/* open an SNMP port */
			if (p != NULL)
				/* already open - do nothing */
				return (SNMP_ERR_NOERROR);

			if (FUNC4(&value->var, sub, iidx, addr, &port))
				return (SNMP_ERR_NO_CREATION);
			return (FUNC8(addr, port, &p));

		} else {
			/* close SNMP port - do in commit */
		}
		return (SNMP_ERR_NOERROR);

	  case SNMP_OP_ROLLBACK:
		p = (struct udp_port *)FUNC5(my_trans,
		    &value->var, sub);
		if (ctx->scratch->int1 == 0) {
			/* did not exist */
			if (ctx->scratch->int2 == 1) {
				/* created */
				if (p != NULL)
					FUNC7(&p->tport);
			}
		}
		return (SNMP_ERR_NOERROR);

	  case SNMP_OP_COMMIT:
		p = (struct udp_port *)FUNC5(my_trans,
		    &value->var, sub);
		if (ctx->scratch->int1 == 1) {
			/* did exist */
			if (ctx->scratch->int2 == 0) {
				/* delete */
				if (p != NULL)
					FUNC7(&p->tport);
			}
		}
		return (SNMP_ERR_NOERROR);

	  default:
		FUNC2();
	}

	/*
	 * Come here to fetch the value
	 */
	switch (which) {

	  case LEAF_begemotSnmpdPortStatus:
		value->v.integer = 1;
		break;

	  default:
		FUNC2();
	}

	return (SNMP_ERR_NOERROR);
}