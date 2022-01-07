
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_type; } ;



__attribute__((used)) static void iucv_sock_init(struct sock *sk, struct sock *parent)
{
 if (parent)
  sk->sk_type = parent->sk_type;
}
