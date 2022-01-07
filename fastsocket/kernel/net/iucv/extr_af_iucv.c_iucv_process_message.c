
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {scalar_t__ sk_type; int sk_rcvbuf; } ;
struct sk_buff {unsigned int len; int truesize; int * data; } ;
struct iucv_path {int dummy; } ;
struct iucv_message {int flags; int rmmsg; int class; } ;
struct TYPE_4__ {int backlog_skb_q; } ;
struct TYPE_3__ {int (* message_receive ) (struct iucv_path*,struct iucv_message*,int,int *,unsigned int,int *) ;int (* path_sever ) (struct iucv_path*,int *) ;} ;


 int CB_TRGCLS (struct sk_buff*) ;
 int CB_TRGCLS_LEN ;
 int IUCV_IPRMDATA ;
 scalar_t__ SOCK_STREAM ;
 int iprm_shutdown ;
 int iucv_fragment_skb (struct sock*,struct sk_buff*,unsigned int) ;
 unsigned int iucv_msg_length (struct iucv_message*) ;
 TYPE_2__* iucv_sk (struct sock*) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ memcmp (int ,int ,int) ;
 int memcpy (int ,int *,int ) ;
 TYPE_1__* pr_iucv ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_queue_head (int *,struct sk_buff*) ;
 int skb_reset_network_header (struct sk_buff*) ;
 int skb_reset_transport_header (struct sk_buff*) ;
 scalar_t__ sock_queue_rcv_skb (struct sock*,struct sk_buff*) ;
 int stub1 (struct iucv_path*,struct iucv_message*,int,int *,unsigned int,int *) ;
 int stub2 (struct iucv_path*,int *) ;

__attribute__((used)) static void iucv_process_message(struct sock *sk, struct sk_buff *skb,
     struct iucv_path *path,
     struct iucv_message *msg)
{
 int rc;
 unsigned int len;

 len = iucv_msg_length(msg);



 memcpy(CB_TRGCLS(skb), &msg->class, CB_TRGCLS_LEN);


 if ((msg->flags & IUCV_IPRMDATA) && len > 7) {
  if (memcmp(msg->rmmsg, iprm_shutdown, 8) == 0) {
   skb->data = ((void*)0);
   skb->len = 0;
  }
 } else {
  rc = pr_iucv->message_receive(path, msg,
           msg->flags & IUCV_IPRMDATA,
           skb->data, len, ((void*)0));
  if (rc) {
   kfree_skb(skb);
   return;
  }



  if (sk->sk_type == SOCK_STREAM &&
      skb->truesize >= sk->sk_rcvbuf / 4) {
   rc = iucv_fragment_skb(sk, skb, len);
   kfree_skb(skb);
   skb = ((void*)0);
   if (rc) {
    pr_iucv->path_sever(path, ((void*)0));
    return;
   }
   skb = skb_dequeue(&iucv_sk(sk)->backlog_skb_q);
  } else {
   skb_reset_transport_header(skb);
   skb_reset_network_header(skb);
   skb->len = len;
  }
 }

 if (sock_queue_rcv_skb(sk, skb))
  skb_queue_head(&iucv_sk(sk)->backlog_skb_q, skb);
}
