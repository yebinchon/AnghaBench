
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_rcvbuf; } ;
struct sk_buff {int dummy; } ;
struct sctp_inq {int dummy; } ;
struct sctp_ep_common {scalar_t__ type; struct sock* sk; scalar_t__ dead; struct sctp_inq inqueue; } ;
struct sctp_chunk {struct sctp_ep_common* rcvr; } ;
struct TYPE_2__ {struct sctp_chunk* chunk; } ;


 int BUG () ;
 scalar_t__ SCTP_EP_TYPE_ASSOCIATION ;
 scalar_t__ SCTP_EP_TYPE_SOCKET ;
 TYPE_1__* SCTP_INPUT_CB (struct sk_buff*) ;
 int sctp_assoc (struct sctp_ep_common*) ;
 int sctp_association_put (int ) ;
 int sctp_bh_lock_sock (struct sock*) ;
 int sctp_bh_unlock_sock (struct sock*) ;
 int sctp_chunk_free (struct sctp_chunk*) ;
 int sctp_endpoint_put (int ) ;
 int sctp_ep (struct sctp_ep_common*) ;
 int sctp_inq_push (struct sctp_inq*,struct sctp_chunk*) ;
 scalar_t__ sk_add_backlog (struct sock*,struct sk_buff*,int ) ;
 scalar_t__ sock_owned_by_user (struct sock*) ;
 scalar_t__ unlikely (int) ;

int sctp_backlog_rcv(struct sock *sk, struct sk_buff *skb)
{
 struct sctp_chunk *chunk = SCTP_INPUT_CB(skb)->chunk;
 struct sctp_inq *inqueue = &chunk->rcvr->inqueue;
 struct sctp_ep_common *rcvr = ((void*)0);
 int backloged = 0;

 rcvr = chunk->rcvr;





 if (rcvr->dead) {
  sctp_chunk_free(chunk);
  goto done;
 }

 if (unlikely(rcvr->sk != sk)) {
  sk = rcvr->sk;
  sctp_bh_lock_sock(sk);

  if (sock_owned_by_user(sk)) {
   if (sk_add_backlog(sk, skb, sk->sk_rcvbuf))
    sctp_chunk_free(chunk);
   else
    backloged = 1;
  } else
   sctp_inq_push(inqueue, chunk);

  sctp_bh_unlock_sock(sk);


  if (backloged)
   return 0;
 } else {
  sctp_inq_push(inqueue, chunk);
 }

done:

 if (SCTP_EP_TYPE_ASSOCIATION == rcvr->type)
  sctp_association_put(sctp_assoc(rcvr));
 else if (SCTP_EP_TYPE_SOCKET == rcvr->type)
  sctp_endpoint_put(sctp_ep(rcvr));
 else
  BUG();

 return 0;
}
