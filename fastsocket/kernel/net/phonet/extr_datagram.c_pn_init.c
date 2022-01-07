
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_destruct; } ;


 int pn_destruct ;

__attribute__((used)) static int pn_init(struct sock *sk)
{
 sk->sk_destruct = pn_destruct;
 return 0;
}
