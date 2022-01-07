
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_rcvbuf; int sk_rmem_alloc; } ;


 scalar_t__ atomic_read (int *) ;
 int sk_rmem_schedule (struct sock*,unsigned int) ;
 int tcp_prune_ofo_queue (struct sock*) ;
 scalar_t__ tcp_prune_queue (struct sock*) ;

__attribute__((used)) static inline int tcp_try_rmem_schedule(struct sock *sk, unsigned int size)
{
 if (atomic_read(&sk->sk_rmem_alloc) > sk->sk_rcvbuf ||
     !sk_rmem_schedule(sk, size)) {

  if (tcp_prune_queue(sk) < 0)
   return -1;

  if (!sk_rmem_schedule(sk, size)) {
   if (!tcp_prune_ofo_queue(sk))
    return -1;

   if (!sk_rmem_schedule(sk, size))
    return -1;
  }
 }
 return 0;
}
