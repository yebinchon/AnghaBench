
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_rcvbuf; } ;
struct sk_buff {int dummy; } ;
struct sctp_ep_common {scalar_t__ type; } ;
struct sctp_chunk {struct sctp_ep_common* rcvr; } ;
struct TYPE_2__ {struct sctp_chunk* chunk; } ;


 int BUG () ;
 scalar_t__ SCTP_EP_TYPE_ASSOCIATION ;
 scalar_t__ SCTP_EP_TYPE_SOCKET ;
 TYPE_1__* SCTP_INPUT_CB (struct sk_buff*) ;
 int sctp_assoc (struct sctp_ep_common*) ;
 int sctp_association_hold (int ) ;
 int sctp_endpoint_hold (int ) ;
 int sctp_ep (struct sctp_ep_common*) ;
 int sk_add_backlog (struct sock*,struct sk_buff*,int ) ;

__attribute__((used)) static int sctp_add_backlog(struct sock *sk, struct sk_buff *skb)
{
 struct sctp_chunk *chunk = SCTP_INPUT_CB(skb)->chunk;
 struct sctp_ep_common *rcvr = chunk->rcvr;
 int ret;

 ret = sk_add_backlog(sk, skb, sk->sk_rcvbuf);
 if (!ret) {




  if (SCTP_EP_TYPE_ASSOCIATION == rcvr->type)
   sctp_association_hold(sctp_assoc(rcvr));
  else if (SCTP_EP_TYPE_SOCKET == rcvr->type)
   sctp_endpoint_hold(sctp_ep(rcvr));
  else
   BUG();
 }
 return ret;

}
