
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_transport {int param_flags; scalar_t__ pathmaxrxt; void* sackdelay; scalar_t__ pathmtu; void* hbinterval; int asoc; } ;
struct sctp_sock {int param_flags; scalar_t__ pathmaxrxt; scalar_t__ sackdelay; scalar_t__ pathmtu; scalar_t__ hbinterval; } ;
struct sctp_paddrparams {int spp_flags; scalar_t__ spp_pathmaxrxt; scalar_t__ spp_sackdelay; scalar_t__ spp_pathmtu; scalar_t__ spp_hbinterval; } ;
struct sctp_association {int param_flags; scalar_t__ pathmaxrxt; void* sackdelay; scalar_t__ pathmtu; void* hbinterval; } ;


 int SPP_HB ;
 int SPP_HB_DEMAND ;
 int SPP_HB_ENABLE ;
 int SPP_HB_TIME_IS_ZERO ;
 int SPP_PMTUD ;
 int SPP_PMTUD_DISABLE ;
 int SPP_PMTUD_ENABLE ;
 int SPP_SACKDELAY ;
 int SPP_SACKDELAY_ENABLE ;
 void* msecs_to_jiffies (scalar_t__) ;
 int sctp_assoc_sync_pmtu (struct sctp_association*) ;
 int sctp_frag_point (struct sctp_association*,scalar_t__) ;
 int sctp_opt2sk (struct sctp_sock*) ;
 int sctp_primitive_REQUESTHEARTBEAT (int ,struct sctp_transport*) ;
 int sctp_transport_pmtu (struct sctp_transport*,int ) ;

__attribute__((used)) static int sctp_apply_peer_addr_params(struct sctp_paddrparams *params,
           struct sctp_transport *trans,
           struct sctp_association *asoc,
           struct sctp_sock *sp,
           int hb_change,
           int pmtud_change,
           int sackdelay_change)
{
 int error;

 if (params->spp_flags & SPP_HB_DEMAND && trans) {
  error = sctp_primitive_REQUESTHEARTBEAT (trans->asoc, trans);
  if (error)
   return error;
 }





 if (params->spp_flags & SPP_HB_ENABLE) {





  if (params->spp_flags & SPP_HB_TIME_IS_ZERO)
   params->spp_hbinterval = 0;

  if (params->spp_hbinterval ||
      (params->spp_flags & SPP_HB_TIME_IS_ZERO)) {
   if (trans) {
    trans->hbinterval =
        msecs_to_jiffies(params->spp_hbinterval);
   } else if (asoc) {
    asoc->hbinterval =
        msecs_to_jiffies(params->spp_hbinterval);
   } else {
    sp->hbinterval = params->spp_hbinterval;
   }
  }
 }

 if (hb_change) {
  if (trans) {
   trans->param_flags =
    (trans->param_flags & ~SPP_HB) | hb_change;
  } else if (asoc) {
   asoc->param_flags =
    (asoc->param_flags & ~SPP_HB) | hb_change;
  } else {
   sp->param_flags =
    (sp->param_flags & ~SPP_HB) | hb_change;
  }
 }






 if ((params->spp_flags & SPP_PMTUD_DISABLE) && params->spp_pathmtu) {
  if (trans) {
   trans->pathmtu = params->spp_pathmtu;
   sctp_assoc_sync_pmtu(asoc);
  } else if (asoc) {
   asoc->pathmtu = params->spp_pathmtu;
   sctp_frag_point(asoc, params->spp_pathmtu);
  } else {
   sp->pathmtu = params->spp_pathmtu;
  }
 }

 if (pmtud_change) {
  if (trans) {
   int update = (trans->param_flags & SPP_PMTUD_DISABLE) &&
    (params->spp_flags & SPP_PMTUD_ENABLE);
   trans->param_flags =
    (trans->param_flags & ~SPP_PMTUD) | pmtud_change;
   if (update) {
    sctp_transport_pmtu(trans, sctp_opt2sk(sp));
    sctp_assoc_sync_pmtu(asoc);
   }
  } else if (asoc) {
   asoc->param_flags =
    (asoc->param_flags & ~SPP_PMTUD) | pmtud_change;
  } else {
   sp->param_flags =
    (sp->param_flags & ~SPP_PMTUD) | pmtud_change;
  }
 }





 if ((params->spp_flags & SPP_SACKDELAY_ENABLE) && params->spp_sackdelay) {
  if (trans) {
   trans->sackdelay =
    msecs_to_jiffies(params->spp_sackdelay);
  } else if (asoc) {
   asoc->sackdelay =
    msecs_to_jiffies(params->spp_sackdelay);
  } else {
   sp->sackdelay = params->spp_sackdelay;
  }
 }

 if (sackdelay_change) {
  if (trans) {
   trans->param_flags =
    (trans->param_flags & ~SPP_SACKDELAY) |
    sackdelay_change;
  } else if (asoc) {
   asoc->param_flags =
    (asoc->param_flags & ~SPP_SACKDELAY) |
    sackdelay_change;
  } else {
   sp->param_flags =
    (sp->param_flags & ~SPP_SACKDELAY) |
    sackdelay_change;
  }
 }




 if (params->spp_pathmaxrxt) {
  if (trans) {
   trans->pathmaxrxt = params->spp_pathmaxrxt;
  } else if (asoc) {
   asoc->pathmaxrxt = params->spp_pathmaxrxt;
  } else {
   sp->pathmaxrxt = params->spp_pathmaxrxt;
  }
 }

 return 0;
}
