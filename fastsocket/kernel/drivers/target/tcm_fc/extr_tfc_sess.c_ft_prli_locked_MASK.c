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
typedef  int u32 ;
struct ft_tport {int /*<<< orphan*/  tpg; } ;
struct ft_sess {int params; int /*<<< orphan*/  max_frame; int /*<<< orphan*/  port_name; } ;
struct ft_node_acl {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  port_name; int /*<<< orphan*/  port_id; } ;
struct fc_rport_priv {int /*<<< orphan*/  maxframe_size; TYPE_1__ ids; int /*<<< orphan*/  prli_count; int /*<<< orphan*/  local_port; } ;
struct fc_els_spp {int spp_flags; void* spp_params; } ;

/* Variables and functions */
 int FCP_SPPF_INIT_FCN ; 
 int FCP_SPPF_RETRY ; 
 int FCP_SPPF_TARG_FCN ; 
 int FC_SPP_EST_IMG_PAIR ; 
 int FC_SPP_OPA_VAL ; 
 int FC_SPP_RESP_ACK ; 
 int FC_SPP_RESP_CONF ; 
 int FC_SPP_RESP_INVL ; 
 int FC_SPP_RESP_NO_PA ; 
 int FC_SPP_RESP_RES ; 
 int FC_SPP_RPA_VAL ; 
 struct ft_node_acl* FUNC0 (int /*<<< orphan*/ ,struct fc_rport_priv*) ; 
 struct ft_sess* FUNC1 (struct ft_tport*,int /*<<< orphan*/ ,struct ft_node_acl*) ; 
 struct ft_tport* FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int) ; 
 int FUNC4 (void*) ; 

__attribute__((used)) static int FUNC5(struct fc_rport_priv *rdata, u32 spp_len,
			  const struct fc_els_spp *rspp, struct fc_els_spp *spp)
{
	struct ft_tport *tport;
	struct ft_sess *sess;
	struct ft_node_acl *acl;
	u32 fcp_parm;

	tport = FUNC2(rdata->local_port);
	if (!tport)
		goto not_target;	/* not a target for this local port */

	acl = FUNC0(tport->tpg, rdata);
	if (!acl)
		goto not_target;	/* no target for this remote */

	if (!rspp)
		goto fill;

	if (rspp->spp_flags & (FC_SPP_OPA_VAL | FC_SPP_RPA_VAL))
		return FC_SPP_RESP_NO_PA;

	/*
	 * If both target and initiator bits are off, the SPP is invalid.
	 */
	fcp_parm = FUNC4(rspp->spp_params);
	if (!(fcp_parm & (FCP_SPPF_INIT_FCN | FCP_SPPF_TARG_FCN)))
		return FC_SPP_RESP_INVL;

	/*
	 * Create session (image pair) only if requested by
	 * EST_IMG_PAIR flag and if the requestor is an initiator.
	 */
	if (rspp->spp_flags & FC_SPP_EST_IMG_PAIR) {
		spp->spp_flags |= FC_SPP_EST_IMG_PAIR;
		if (!(fcp_parm & FCP_SPPF_INIT_FCN))
			return FC_SPP_RESP_CONF;
		sess = FUNC1(tport, rdata->ids.port_id, acl);
		if (!sess)
			return FC_SPP_RESP_RES;
		if (!sess->params)
			rdata->prli_count++;
		sess->params = fcp_parm;
		sess->port_name = rdata->ids.port_name;
		sess->max_frame = rdata->maxframe_size;

		/* XXX TBD - clearing actions.  unit attn, see 4.10 */
	}

	/*
	 * OR in our service parameters with other provider (initiator), if any.
	 */
fill:
	fcp_parm = FUNC4(spp->spp_params);
	fcp_parm &= ~FCP_SPPF_RETRY;
	spp->spp_params = FUNC3(fcp_parm | FCP_SPPF_TARG_FCN);
	return FC_SPP_RESP_ACK;

not_target:
	fcp_parm = FUNC4(spp->spp_params);
	fcp_parm &= ~FCP_SPPF_TARG_FCN;
	spp->spp_params = FUNC3(fcp_parm);
	return 0;
}