
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {int dummy; } ;
struct sock {int sk_protocol; int sk_timer; int sk_state; int sk_allocation; int sk_sndtimeo; int sk_destruct; } ;
struct TYPE_2__ {int lock; int list; } ;
struct iucv_sock {int transport; int src_user_id; int sk_txnotify; int * path; int msg_recv; int msg_sent; scalar_t__ msglimit; scalar_t__ flags; int pendings; scalar_t__ send_tag; int backlog_skb_q; TYPE_1__ message_q; int send_skb_q; int accept_q_lock; int accept_q; } ;
typedef int gfp_t ;


 int AF_IUCV_TRANS_HIPER ;
 int AF_IUCV_TRANS_IUCV ;
 int GFP_DMA ;
 int INIT_LIST_HEAD (int *) ;
 int IUCV_CONN_TIMEOUT ;
 int IUCV_OPEN ;
 int PF_IUCV ;
 int SOCK_ZAPPED ;
 int afiucv_hs_callback_txnotify ;
 int atomic_set (int *,int ) ;
 int init_net ;
 int iucv_proto ;
 struct iucv_sock* iucv_sk (struct sock*) ;
 int iucv_sk_list ;
 int iucv_sock_destruct ;
 int iucv_sock_link (int *,struct sock*) ;
 int iucv_sock_timeout ;
 int memset (int *,int ,int) ;
 scalar_t__ pr_iucv ;
 int setup_timer (int *,int ,unsigned long) ;
 struct sock* sk_alloc (int *,int ,int ,int *) ;
 int skb_queue_head_init (int *) ;
 int sock_init_data (struct socket*,struct sock*) ;
 int sock_reset_flag (struct sock*,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct sock *iucv_sock_alloc(struct socket *sock, int proto, gfp_t prio)
{
 struct sock *sk;
 struct iucv_sock *iucv;

 sk = sk_alloc(&init_net, PF_IUCV, prio, &iucv_proto);
 if (!sk)
  return ((void*)0);
 iucv = iucv_sk(sk);

 sock_init_data(sock, sk);
 INIT_LIST_HEAD(&iucv->accept_q);
 spin_lock_init(&iucv->accept_q_lock);
 skb_queue_head_init(&iucv->send_skb_q);
 INIT_LIST_HEAD(&iucv->message_q.list);
 spin_lock_init(&iucv->message_q.lock);
 skb_queue_head_init(&iucv->backlog_skb_q);
 iucv->send_tag = 0;
 atomic_set(&iucv->pendings, 0);
 iucv->flags = 0;
 iucv->msglimit = 0;
 atomic_set(&iucv->msg_sent, 0);
 atomic_set(&iucv->msg_recv, 0);
 iucv->path = ((void*)0);
 iucv->sk_txnotify = afiucv_hs_callback_txnotify;
 memset(&iucv->src_user_id , 0, 32);
 if (pr_iucv)
  iucv->transport = AF_IUCV_TRANS_IUCV;
 else
  iucv->transport = AF_IUCV_TRANS_HIPER;

 sk->sk_destruct = iucv_sock_destruct;
 sk->sk_sndtimeo = IUCV_CONN_TIMEOUT;
 sk->sk_allocation = GFP_DMA;

 sock_reset_flag(sk, SOCK_ZAPPED);

 sk->sk_protocol = proto;
 sk->sk_state = IUCV_OPEN;

 setup_timer(&sk->sk_timer, iucv_sock_timeout, (unsigned long)sk);

 iucv_sock_link(&iucv_sk_list, sk);
 return sk;
}
