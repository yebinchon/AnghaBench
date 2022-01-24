#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u_int ;
struct snmp_pdu {size_t nbindings; scalar_t__ version; int error_status; size_t error_index; TYPE_3__* bindings; } ;
struct TYPE_6__ {int /*<<< orphan*/  len; } ;
struct snmp_node {int syntax; int (* op ) (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  index; TYPE_1__ oid; } ;
struct TYPE_7__ {void* data; } ;
struct context {TYPE_2__ ctx; } ;
struct asn_buf {int dummy; } ;
typedef  enum snmp_syntax { ____Placeholder_snmp_syntax } snmp_syntax ;
typedef  enum snmp_ret { ____Placeholder_snmp_ret } snmp_ret ;
typedef  enum asn_err { ____Placeholder_asn_err } asn_err ;
typedef  int /*<<< orphan*/  context ;
struct TYPE_8__ {int syntax; int /*<<< orphan*/  var; } ;

/* Variables and functions */
 int ASN_ERR_EOBUF ; 
 int ASN_ERR_OK ; 
 int /*<<< orphan*/  GET ; 
 scalar_t__ SNMP_CODE_OK ; 
 void* SNMP_ERR_GENERR ; 
 int SNMP_ERR_NOERROR ; 
 int SNMP_ERR_NOSUCHNAME ; 
 int SNMP_ERR_TOOBIG ; 
 int /*<<< orphan*/  SNMP_OP_GET ; 
 int SNMP_RET_ERR ; 
 int SNMP_RET_IGN ; 
 int SNMP_RET_OK ; 
 int SNMP_SYNTAX_NOSUCHINSTANCE ; 
 scalar_t__ SNMP_V1 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct snmp_node* FUNC1 (TYPE_3__*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct context*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct asn_buf*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 scalar_t__ FUNC5 (struct asn_buf*,struct snmp_pdu*) ; 
 int /*<<< orphan*/  FUNC6 (struct snmp_pdu*,struct snmp_pdu*) ; 
 scalar_t__ FUNC7 (struct asn_buf*,struct snmp_pdu*) ; 
 int /*<<< orphan*/  FUNC8 (struct snmp_pdu*) ; 
 int FUNC9 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

enum snmp_ret
FUNC10(struct snmp_pdu *pdu, struct asn_buf *resp_b,
    struct snmp_pdu *resp, void *data)
{
	int ret;
	u_int i;
	struct snmp_node *tp;
	enum snmp_syntax except;
	struct context context;
	enum asn_err err;

	FUNC2(&context, 0, sizeof(context));
	context.ctx.data = data;

	FUNC6(pdu, resp);

	if (FUNC7(resp_b, resp) != SNMP_CODE_OK)
		/* cannot even encode header - very bad */
		return (SNMP_RET_IGN);

	for (i = 0; i < pdu->nbindings; i++) {
		resp->bindings[i].var = pdu->bindings[i].var;
		if ((tp = FUNC1(&pdu->bindings[i], &except)) == NULL) {
			if (pdu->version == SNMP_V1) {
				if (FUNC0(GET))
					FUNC4("get: nosuchname");
				pdu->error_status = SNMP_ERR_NOSUCHNAME;
				pdu->error_index = i + 1;
				FUNC8(resp);
				return (SNMP_RET_ERR);
			}
			if (FUNC0(GET))
				FUNC4("get: exception %u", except);
			resp->bindings[i].syntax = except;

		} else {
			/* call the action to fetch the value. */
			resp->bindings[i].syntax = tp->syntax;
			ret = (*tp->op)(&context.ctx, &resp->bindings[i],
			    tp->oid.len, tp->index, SNMP_OP_GET);
			if (FUNC0(GET))
				FUNC4("get: action returns %d", ret);

			if (ret == SNMP_ERR_NOSUCHNAME) {
				if (pdu->version == SNMP_V1) {
					pdu->error_status = SNMP_ERR_NOSUCHNAME;
					pdu->error_index = i + 1;
					FUNC8(resp);
					return (SNMP_RET_ERR);
				}
				if (FUNC0(GET))
					FUNC4("get: exception noSuchInstance");
				resp->bindings[i].syntax = SNMP_SYNTAX_NOSUCHINSTANCE;

			} else if (ret != SNMP_ERR_NOERROR) {
				pdu->error_status = SNMP_ERR_GENERR;
				pdu->error_index = i + 1;
				FUNC8(resp);
				return (SNMP_RET_ERR);
			}
		}
		resp->nbindings++;

		err = FUNC3(resp_b, &resp->bindings[i]);

		if (err == ASN_ERR_EOBUF) {
			pdu->error_status = SNMP_ERR_TOOBIG;
			pdu->error_index = 0;
			FUNC8(resp);
			return (SNMP_RET_ERR);
		}
		if (err != ASN_ERR_OK) {
			if (FUNC0(GET))
				FUNC4("get: binding encoding: %u", err);
			pdu->error_status = SNMP_ERR_GENERR;
			pdu->error_index = i + 1;
			FUNC8(resp);
			return (SNMP_RET_ERR);
		}
	}

	if (FUNC5(resp_b, resp) != SNMP_CODE_OK) {
		FUNC4("get: failed to encode PDU");
		return (SNMP_RET_ERR);
	}

	return (SNMP_RET_OK);
}