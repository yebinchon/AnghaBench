
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sctp_transport {scalar_t__ pathmtu; int pmtu_pending; int param_flags; } ;
struct sctp_association {int pmtu_pending; int outqueue; } ;
typedef scalar_t__ __u32 ;


 int SCTP_RTXR_PMTUD ;
 int SPP_PMTUD_ENABLE ;
 int sctp_assoc_sync_pmtu (struct sctp_association*) ;
 int sctp_retransmit (int *,struct sctp_transport*,int ) ;
 int sctp_transport_update_pmtu (struct sctp_transport*,scalar_t__) ;
 scalar_t__ sock_owned_by_user (struct sock*) ;

void sctp_icmp_frag_needed(struct sock *sk, struct sctp_association *asoc,
      struct sctp_transport *t, __u32 pmtu)
{
 if (!t || (t->pathmtu <= pmtu))
  return;

 if (sock_owned_by_user(sk)) {
  asoc->pmtu_pending = 1;
  t->pmtu_pending = 1;
  return;
 }

 if (t->param_flags & SPP_PMTUD_ENABLE) {

  sctp_transport_update_pmtu(t, pmtu);


  sctp_assoc_sync_pmtu(asoc);
 }







 sctp_retransmit(&asoc->outqueue, t, SCTP_RTXR_PMTUD);
}
