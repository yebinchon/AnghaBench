
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_omem_alloc; } ;


 int atomic_sub (int,int *) ;
 int kfree (void*) ;

void sock_kfree_s(struct sock *sk, void *mem, int size)
{
 kfree(mem);
 atomic_sub(size, &sk->sk_omem_alloc);
}
