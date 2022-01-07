
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ user_mss; } ;
struct tcp_sock {int write_seq; scalar_t__ advmss; int total_retrans; TYPE_1__ rx_opt; } ;
struct tcp_md5sig_key {int keylen; int key; } ;
struct sock {int sk_route_caps; int sk_gso_type; } ;
struct sk_buff {int dummy; } ;
struct request_sock {int retrans; } ;
struct ip_options {scalar_t__ optlen; } ;
struct inet_sock {int id; int daddr; int mc_ttl; int mc_index; int opt; int saddr; int rcv_saddr; } ;
struct inet_request_sock {struct ip_options* opt; int loc_addr; int rmt_addr; } ;
struct dst_entry {int dummy; } ;
struct TYPE_10__ {scalar_t__ icsk_ext_hdr_len; } ;
struct TYPE_9__ {int tos; int ttl; } ;
struct TYPE_8__ {int rcv_tos; } ;
struct TYPE_7__ {scalar_t__ snt_synack; } ;


 int GFP_ATOMIC ;
 int LINUX_MIB_LISTENDROPS ;
 int LINUX_MIB_LISTENOVERFLOWS ;
 int NETIF_F_GSO_MASK ;
 int NET_INC_STATS_BH (int ,int ) ;
 int RTAX_ADVMSS ;
 int SKB_GSO_TCPV4 ;
 int __inet_hash_nolisten (struct sock*) ;
 scalar_t__ __inet_inherit_port (struct sock*,struct sock*) ;
 scalar_t__ dst_metric (struct dst_entry*,int ) ;
 int dst_mtu (struct dst_entry*) ;
 int dst_release (struct dst_entry*) ;
 TYPE_5__* inet_csk (struct sock*) ;
 struct dst_entry* inet_csk_route_req (struct sock*,struct request_sock*) ;
 int inet_iif (struct sk_buff*) ;
 struct inet_request_sock* inet_rsk (struct request_sock*) ;
 struct inet_sock* inet_sk (struct sock*) ;
 TYPE_4__* ip_hdr (struct sk_buff*) ;
 int jiffies ;
 char* kmemdup (int ,int ,int ) ;
 int rcu_assign_pointer (int ,struct ip_options*) ;
 scalar_t__ sk_acceptq_is_full (struct sock*) ;
 TYPE_3__* sk_extended (struct sock*) ;
 int sk_setup_caps (struct sock*,struct dst_entry*) ;
 int sock_net (struct sock*) ;
 int sock_put (struct sock*) ;
 struct sock* tcp_create_openreq_child (struct sock*,struct request_sock*,struct sk_buff*) ;
 int tcp_initialize_rcv_mss (struct sock*) ;
 int tcp_mtup_init (struct sock*) ;
 TYPE_2__* tcp_rsk (struct request_sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_sync_mss (struct sock*,int ) ;
 scalar_t__ tcp_time_stamp ;
 int tcp_v4_md5_do_add (struct sock*,int ,char*,int ) ;
 struct tcp_md5sig_key* tcp_v4_md5_do_lookup (struct sock*,int ) ;
 int tcp_valid_rtt_meas (struct sock*,scalar_t__) ;

struct sock *tcp_v4_syn_recv_sock(struct sock *sk, struct sk_buff *skb,
      struct request_sock *req,
      struct dst_entry *dst)
{
 struct inet_request_sock *ireq;
 struct inet_sock *newinet;
 struct tcp_sock *newtp;
 struct sock *newsk;



 struct ip_options *inet_opt;

 if (sk_acceptq_is_full(sk))
  goto exit_overflow;

 if (!dst && (dst = inet_csk_route_req(sk, req)) == ((void*)0))
  goto exit;

 newsk = tcp_create_openreq_child(sk, req, skb);
 if (!newsk)
  goto exit_nonewsk;

 newsk->sk_gso_type = SKB_GSO_TCPV4;
 sk_setup_caps(newsk, dst);

 newtp = tcp_sk(newsk);
 newinet = inet_sk(newsk);
 ireq = inet_rsk(req);
 newinet->daddr = ireq->rmt_addr;
 newinet->rcv_saddr = ireq->loc_addr;
 newinet->saddr = ireq->loc_addr;
 inet_opt = ireq->opt;
 rcu_assign_pointer(newinet->opt, inet_opt);
 ireq->opt = ((void*)0);
 newinet->mc_index = inet_iif(skb);
 newinet->mc_ttl = ip_hdr(skb)->ttl;
 sk_extended(newsk)->rcv_tos = ip_hdr(skb)->tos;
 inet_csk(newsk)->icsk_ext_hdr_len = 0;
 if (inet_opt)
  inet_csk(newsk)->icsk_ext_hdr_len = inet_opt->optlen;
 newinet->id = newtp->write_seq ^ jiffies;

 tcp_mtup_init(newsk);
 tcp_sync_mss(newsk, dst_mtu(dst));
 newtp->advmss = dst_metric(dst, RTAX_ADVMSS);
 if (tcp_sk(sk)->rx_opt.user_mss &&
     tcp_sk(sk)->rx_opt.user_mss < newtp->advmss)
  newtp->advmss = tcp_sk(sk)->rx_opt.user_mss;

 tcp_initialize_rcv_mss(newsk);
 if (tcp_rsk(req)->snt_synack)
  tcp_valid_rtt_meas(newsk,
      tcp_time_stamp - tcp_rsk(req)->snt_synack);
 newtp->total_retrans = req->retrans;
 if (__inet_inherit_port(sk, newsk) < 0) {
  sock_put(newsk);
  goto exit;
 }
 __inet_hash_nolisten(newsk);

 return newsk;

exit_overflow:
 NET_INC_STATS_BH(sock_net(sk), LINUX_MIB_LISTENOVERFLOWS);
exit_nonewsk:
 dst_release(dst);
exit:
 NET_INC_STATS_BH(sock_net(sk), LINUX_MIB_LISTENDROPS);
 return ((void*)0);
}
