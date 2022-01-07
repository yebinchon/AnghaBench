
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {scalar_t__ state; struct sock* sk; } ;
struct sock {int dummy; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 scalar_t__ SS_LISTENING ;
 scalar_t__ SS_READY ;
 scalar_t__ SS_UNCONNECTED ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;

__attribute__((used)) static int listen(struct socket *sock, int len)
{
 struct sock *sk = sock->sk;
 int res;

 lock_sock(sk);

 if (sock->state == SS_READY)
  res = -EOPNOTSUPP;
 else if (sock->state != SS_UNCONNECTED)
  res = -EINVAL;
 else {
  sock->state = SS_LISTENING;
  res = 0;
 }

 release_sock(sk);
 return res;
}
