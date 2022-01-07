
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_state; } ;



__attribute__((used)) static int iucv_sock_in_state(struct sock *sk, int state, int state2)
{
 return (sk->sk_state == state || sk->sk_state == state2);
}
