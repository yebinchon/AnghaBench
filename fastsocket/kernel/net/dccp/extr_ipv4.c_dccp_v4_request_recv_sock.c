
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct request_sock {int dummy; } ;
struct inet_sock {int id; int mc_ttl; int mc_index; int * opt; int saddr; int rcv_saddr; int daddr; } ;
struct inet_request_sock {int * opt; int loc_addr; int rmt_addr; } ;
struct dst_entry {int dummy; } ;
struct TYPE_2__ {int ttl; } ;


 int LINUX_MIB_LISTENDROPS ;
 int LINUX_MIB_LISTENOVERFLOWS ;
 int NET_INC_STATS_BH (int ,int ) ;
 int __inet_hash_nolisten (struct sock*) ;
 scalar_t__ __inet_inherit_port (struct sock*,struct sock*) ;
 struct sock* dccp_create_openreq_child (struct sock*,struct request_sock*,struct sk_buff*) ;
 int dccp_sync_mss (struct sock*,int ) ;
 int dst_mtu (struct dst_entry*) ;
 int dst_release (struct dst_entry*) ;
 struct dst_entry* inet_csk_route_req (struct sock*,struct request_sock*) ;
 int inet_iif (struct sk_buff*) ;
 struct inet_request_sock* inet_rsk (struct request_sock*) ;
 struct inet_sock* inet_sk (struct sock*) ;
 TYPE_1__* ip_hdr (struct sk_buff*) ;
 int jiffies ;
 scalar_t__ sk_acceptq_is_full (struct sock*) ;
 int sk_setup_caps (struct sock*,struct dst_entry*) ;
 int sock_net (struct sock*) ;
 int sock_put (struct sock*) ;

struct sock *dccp_v4_request_recv_sock(struct sock *sk, struct sk_buff *skb,
           struct request_sock *req,
           struct dst_entry *dst)
{
 struct inet_request_sock *ireq;
 struct inet_sock *newinet;
 struct sock *newsk;

 if (sk_acceptq_is_full(sk))
  goto exit_overflow;

 if (dst == ((void*)0) && (dst = inet_csk_route_req(sk, req)) == ((void*)0))
  goto exit;

 newsk = dccp_create_openreq_child(sk, req, skb);
 if (newsk == ((void*)0))
  goto exit_nonewsk;

 sk_setup_caps(newsk, dst);

 newinet = inet_sk(newsk);
 ireq = inet_rsk(req);
 newinet->daddr = ireq->rmt_addr;
 newinet->rcv_saddr = ireq->loc_addr;
 newinet->saddr = ireq->loc_addr;
 newinet->opt = ireq->opt;
 ireq->opt = ((void*)0);
 newinet->mc_index = inet_iif(skb);
 newinet->mc_ttl = ip_hdr(skb)->ttl;
 newinet->id = jiffies;

 dccp_sync_mss(newsk, dst_mtu(dst));

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
