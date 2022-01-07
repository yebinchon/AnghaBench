
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_port {scalar_t__ usr_handle; } ;
struct sock {int sk_rcvbuf; } ;
struct sk_buff {int dummy; } ;


 int TIPC_ERR_OVERLOAD ;
 int TIPC_OK ;
 int bh_lock_sock (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 int filter_rcv (struct sock*,struct sk_buff*) ;
 scalar_t__ sk_add_backlog (struct sock*,struct sk_buff*,int ) ;
 int sock_owned_by_user (struct sock*) ;

__attribute__((used)) static u32 dispatch(struct tipc_port *tport, struct sk_buff *buf)
{
 struct sock *sk = (struct sock *)tport->usr_handle;
 u32 res;
 bh_lock_sock(sk);
 if (!sock_owned_by_user(sk)) {
  res = filter_rcv(sk, buf);
 } else {
  if (sk_add_backlog(sk, buf, sk->sk_rcvbuf))
   res = TIPC_ERR_OVERLOAD;
  else
   res = TIPC_OK;
 }
 bh_unlock_sock(sk);

 return res;
}
