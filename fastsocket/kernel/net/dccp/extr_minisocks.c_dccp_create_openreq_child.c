
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int * sk_destruct; } ;
struct sk_buff {int dummy; } ;
struct request_sock {int dummy; } ;
struct inet_connection_sock {int icsk_rto; } ;
struct dccp_sock {int dccps_iss; int dccps_awl; int dccps_isr; int dccps_swl; int dccps_gar; int dccps_featneg; int dccps_timestamp_time; int dccps_timestamp_echo; int dccps_service; int * dccps_service_list; int * dccps_hc_rx_ackvec; int dccps_role; } ;
struct dccp_request_sock {int dreq_featneg; int dreq_isr; int dreq_iss; int dreq_timestamp_time; int dreq_timestamp_echo; int dreq_service; } ;


 int DCCP_INC_STATS_BH (int ) ;
 int DCCP_MIB_PASSIVEOPENS ;
 int DCCP_ROLE_SERVER ;
 int DCCP_TIMEOUT_INIT ;
 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ dccp_feat_activate_values (struct sock*,int *) ;
 int dccp_init_xmit_timers (struct sock*) ;
 struct dccp_request_sock* dccp_rsk (struct request_sock const*) ;
 int dccp_set_seqno (int *,int ) ;
 struct dccp_sock* dccp_sk (struct sock*) ;
 int dccp_update_gsr (struct sock*,int ) ;
 int dccp_update_gss (struct sock*,int ) ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 struct sock* inet_csk_clone (struct sock*,struct request_sock const*,int ) ;
 int max48 (int ,int ) ;
 int sk_free (struct sock*) ;

struct sock *dccp_create_openreq_child(struct sock *sk,
           const struct request_sock *req,
           const struct sk_buff *skb)
{






 struct sock *newsk = inet_csk_clone(sk, req, GFP_ATOMIC);

 if (newsk != ((void*)0)) {
  struct dccp_request_sock *dreq = dccp_rsk(req);
  struct inet_connection_sock *newicsk = inet_csk(newsk);
  struct dccp_sock *newdp = dccp_sk(newsk);

  newdp->dccps_role = DCCP_ROLE_SERVER;
  newdp->dccps_hc_rx_ackvec = ((void*)0);
  newdp->dccps_service_list = ((void*)0);
  newdp->dccps_service = dreq->dreq_service;
  newdp->dccps_timestamp_echo = dreq->dreq_timestamp_echo;
  newdp->dccps_timestamp_time = dreq->dreq_timestamp_time;
  newicsk->icsk_rto = DCCP_TIMEOUT_INIT;

  INIT_LIST_HEAD(&newdp->dccps_featneg);







  newdp->dccps_gar = newdp->dccps_iss = dreq->dreq_iss;
  dccp_update_gss(newsk, dreq->dreq_iss);

  newdp->dccps_isr = dreq->dreq_isr;
  dccp_update_gsr(newsk, dreq->dreq_isr);
  dccp_set_seqno(&newdp->dccps_swl,
          max48(newdp->dccps_swl, newdp->dccps_isr));
  dccp_set_seqno(&newdp->dccps_awl,
          max48(newdp->dccps_awl, newdp->dccps_iss));





  if (dccp_feat_activate_values(newsk, &dreq->dreq_featneg)) {


   newsk->sk_destruct = ((void*)0);
   sk_free(newsk);
   return ((void*)0);
  }
  dccp_init_xmit_timers(newsk);

  DCCP_INC_STATS_BH(DCCP_MIB_PASSIVEOPENS);
 }
 return newsk;
}
