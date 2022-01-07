
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_forward_alloc; int sk_wmem_queued; int sk_wmem_alloc; int sk_rmem_alloc; int sk_error_queue; int sk_receive_queue; } ;


 int SOCK_DEAD ;
 int WARN_ON (int ) ;
 int atomic_read (int *) ;
 int pr_err (char*,struct sock*) ;
 int sk_mem_reclaim (struct sock*) ;
 int skb_queue_purge (int *) ;
 int sock_flag (struct sock*,int ) ;

__attribute__((used)) static void iucv_sock_destruct(struct sock *sk)
{
 skb_queue_purge(&sk->sk_receive_queue);
 skb_queue_purge(&sk->sk_error_queue);

 sk_mem_reclaim(sk);

 if (!sock_flag(sk, SOCK_DEAD)) {
  pr_err("Attempt to release alive iucv socket %p\n", sk);
  return;
 }

 WARN_ON(atomic_read(&sk->sk_rmem_alloc));
 WARN_ON(atomic_read(&sk->sk_wmem_alloc));
 WARN_ON(sk->sk_wmem_queued);
 WARN_ON(sk->sk_forward_alloc);
}
