
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int * sk_send_head; } ;
struct dccp_sock {int dccps_featneg; int * dccps_hc_tx_ccid; int dccps_hc_rx_ccid; int * dccps_hc_rx_ackvec; int * dccps_service_list; } ;
struct TYPE_2__ {int * icsk_bind_hash; } ;


 int ccid_hc_rx_delete (int ,struct sock*) ;
 int ccid_hc_tx_delete (int *,struct sock*) ;
 int dccp_ackvec_free (int *) ;
 int dccp_feat_list_purge (int *) ;
 struct dccp_sock* dccp_sk (struct sock*) ;
 TYPE_1__* inet_csk (struct sock*) ;
 int inet_put_port (struct sock*) ;
 int kfree (int *) ;
 int kfree_skb (int *) ;

void dccp_destroy_sock(struct sock *sk)
{
 struct dccp_sock *dp = dccp_sk(sk);





 if (sk->sk_send_head != ((void*)0)) {
  kfree_skb(sk->sk_send_head);
  sk->sk_send_head = ((void*)0);
 }


 if (inet_csk(sk)->icsk_bind_hash != ((void*)0))
  inet_put_port(sk);

 kfree(dp->dccps_service_list);
 dp->dccps_service_list = ((void*)0);

 if (dp->dccps_hc_rx_ackvec != ((void*)0)) {
  dccp_ackvec_free(dp->dccps_hc_rx_ackvec);
  dp->dccps_hc_rx_ackvec = ((void*)0);
 }
 ccid_hc_rx_delete(dp->dccps_hc_rx_ccid, sk);
 ccid_hc_tx_delete(dp->dccps_hc_tx_ccid, sk);
 dp->dccps_hc_rx_ccid = dp->dccps_hc_tx_ccid = ((void*)0);


 dccp_feat_list_purge(&dp->dccps_featneg);
}
