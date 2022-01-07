
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_wmem_alloc; int (* sk_write_space ) (struct sock*) ;} ;
struct sk_buff {unsigned int truesize; struct sock* sk; } ;


 int SOCK_USE_WRITE_QUEUE ;
 int __sk_free (struct sock*) ;
 int atomic_sub (unsigned int,int *) ;
 scalar_t__ atomic_sub_and_test (unsigned int,int *) ;
 int sock_flag (struct sock*,int ) ;
 int stub1 (struct sock*) ;

void sock_wfree(struct sk_buff *skb)
{
 struct sock *sk = skb->sk;
 unsigned int len = skb->truesize;

 if (!sock_flag(sk, SOCK_USE_WRITE_QUEUE)) {




  atomic_sub(len - 1, &sk->sk_wmem_alloc);
  sk->sk_write_space(sk);
  len = 1;
 }




 if (atomic_sub_and_test(len, &sk->sk_wmem_alloc))
  __sk_free(sk);
}
