
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_protinfo; } ;


 int kfree (int ) ;

__attribute__((used)) static void sock_def_destruct(struct sock *sk)
{
 kfree(sk->sk_protinfo);
}
