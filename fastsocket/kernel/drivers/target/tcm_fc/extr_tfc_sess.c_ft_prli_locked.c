
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ft_tport {int tpg; } ;
struct ft_sess {int params; int max_frame; int port_name; } ;
struct ft_node_acl {int dummy; } ;
struct TYPE_2__ {int port_name; int port_id; } ;
struct fc_rport_priv {int maxframe_size; TYPE_1__ ids; int prli_count; int local_port; } ;
struct fc_els_spp {int spp_flags; void* spp_params; } ;


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
 struct ft_node_acl* ft_acl_get (int ,struct fc_rport_priv*) ;
 struct ft_sess* ft_sess_create (struct ft_tport*,int ,struct ft_node_acl*) ;
 struct ft_tport* ft_tport_create (int ) ;
 void* htonl (int) ;
 int ntohl (void*) ;

__attribute__((used)) static int ft_prli_locked(struct fc_rport_priv *rdata, u32 spp_len,
     const struct fc_els_spp *rspp, struct fc_els_spp *spp)
{
 struct ft_tport *tport;
 struct ft_sess *sess;
 struct ft_node_acl *acl;
 u32 fcp_parm;

 tport = ft_tport_create(rdata->local_port);
 if (!tport)
  goto not_target;

 acl = ft_acl_get(tport->tpg, rdata);
 if (!acl)
  goto not_target;

 if (!rspp)
  goto fill;

 if (rspp->spp_flags & (FC_SPP_OPA_VAL | FC_SPP_RPA_VAL))
  return FC_SPP_RESP_NO_PA;




 fcp_parm = ntohl(rspp->spp_params);
 if (!(fcp_parm & (FCP_SPPF_INIT_FCN | FCP_SPPF_TARG_FCN)))
  return FC_SPP_RESP_INVL;





 if (rspp->spp_flags & FC_SPP_EST_IMG_PAIR) {
  spp->spp_flags |= FC_SPP_EST_IMG_PAIR;
  if (!(fcp_parm & FCP_SPPF_INIT_FCN))
   return FC_SPP_RESP_CONF;
  sess = ft_sess_create(tport, rdata->ids.port_id, acl);
  if (!sess)
   return FC_SPP_RESP_RES;
  if (!sess->params)
   rdata->prli_count++;
  sess->params = fcp_parm;
  sess->port_name = rdata->ids.port_name;
  sess->max_frame = rdata->maxframe_size;


 }




fill:
 fcp_parm = ntohl(spp->spp_params);
 fcp_parm &= ~FCP_SPPF_RETRY;
 spp->spp_params = htonl(fcp_parm | FCP_SPPF_TARG_FCN);
 return FC_SPP_RESP_ACK;

not_target:
 fcp_parm = ntohl(spp->spp_params);
 fcp_parm &= ~FCP_SPPF_TARG_FCN;
 spp->spp_params = htonl(fcp_parm);
 return 0;
}
