
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_rcvbuf; int sk_rmem_alloc; } ;


 int atomic_read (int *) ;

__attribute__((used)) static int pfkey_can_dump(struct sock *sk)
{
 if (3 * atomic_read(&sk->sk_rmem_alloc) <= 2 * sk->sk_rcvbuf)
  return 1;
 return 0;
}
