
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct udphdr {int dummy; } ;
struct sock {int sk_callback_lock; } ;
struct sk_buff {int len; } ;
struct rpc_xprt {int transport_lock; } ;
struct rpc_task {int dummy; } ;
struct TYPE_2__ {int buflen; } ;
struct rpc_rqst {TYPE_1__ rq_private_buf; struct rpc_task* rq_task; } ;
typedef int _xid ;
typedef int __be32 ;


 int UDPX_INC_STATS_BH (struct sock*,int ) ;
 int UDP_MIB_INDATAGRAMS ;
 int UDP_MIB_INERRORS ;
 scalar_t__ csum_partial_copy_to_xdr (TYPE_1__*,struct sk_buff*) ;
 int dprintk (char*,...) ;
 int dst_confirm (int ) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 int skb_dst (struct sk_buff*) ;
 int skb_free_datagram (struct sock*,struct sk_buff*) ;
 int * skb_header_pointer (struct sk_buff*,int,int,int *) ;
 struct sk_buff* skb_recv_datagram (struct sock*,int ,int,int*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int xprt_adjust_cwnd (struct rpc_task*,int) ;
 int xprt_complete_rqst (struct rpc_task*,int) ;
 struct rpc_xprt* xprt_from_sock (struct sock*) ;
 struct rpc_rqst* xprt_lookup_rqst (struct rpc_xprt*,int ) ;

__attribute__((used)) static void xs_udp_data_ready(struct sock *sk, int len)
{
 struct rpc_task *task;
 struct rpc_xprt *xprt;
 struct rpc_rqst *rovr;
 struct sk_buff *skb;
 int err, repsize, copied;
 u32 _xid;
 __be32 *xp;

 read_lock_bh(&sk->sk_callback_lock);
 dprintk("RPC:       xs_udp_data_ready...\n");
 if (!(xprt = xprt_from_sock(sk)))
  goto out;

 if ((skb = skb_recv_datagram(sk, 0, 1, &err)) == ((void*)0))
  goto out;

 repsize = skb->len - sizeof(struct udphdr);
 if (repsize < 4) {
  dprintk("RPC:       impossible RPC reply size %d!\n", repsize);
  goto dropit;
 }


 xp = skb_header_pointer(skb, sizeof(struct udphdr),
    sizeof(_xid), &_xid);
 if (xp == ((void*)0))
  goto dropit;


 spin_lock(&xprt->transport_lock);
 rovr = xprt_lookup_rqst(xprt, *xp);
 if (!rovr)
  goto out_unlock;
 task = rovr->rq_task;

 if ((copied = rovr->rq_private_buf.buflen) > repsize)
  copied = repsize;


 if (csum_partial_copy_to_xdr(&rovr->rq_private_buf, skb)) {
  UDPX_INC_STATS_BH(sk, UDP_MIB_INERRORS);
  goto out_unlock;
 }

 UDPX_INC_STATS_BH(sk, UDP_MIB_INDATAGRAMS);


 dst_confirm(skb_dst(skb));

 xprt_adjust_cwnd(task, copied);
 xprt_complete_rqst(task, copied);

 out_unlock:
 spin_unlock(&xprt->transport_lock);
 dropit:
 skb_free_datagram(sk, skb);
 out:
 read_unlock_bh(&sk->sk_callback_lock);
}
