
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_state; int (* sk_data_ready ) (struct sock*,int ) ;} ;
struct sk_buff {int len; } ;


 int const DCCP_RESPOND ;
 int __sk_add_backlog (struct sock*,struct sk_buff*) ;
 int bh_unlock_sock (struct sock*) ;
 int dccp_hdr (struct sk_buff*) ;
 int dccp_rcv_state_process (struct sock*,struct sk_buff*,int ,int ) ;
 int sock_owned_by_user (struct sock*) ;
 int sock_put (struct sock*) ;
 int stub1 (struct sock*,int ) ;

int dccp_child_process(struct sock *parent, struct sock *child,
         struct sk_buff *skb)
{
 int ret = 0;
 const int state = child->sk_state;

 if (!sock_owned_by_user(child)) {
  ret = dccp_rcv_state_process(child, skb, dccp_hdr(skb),
          skb->len);


  if (state == DCCP_RESPOND && child->sk_state != state)
   parent->sk_data_ready(parent, 0);
 } else {




  __sk_add_backlog(child, skb);
 }

 bh_unlock_sock(child);
 sock_put(child);
 return ret;
}
