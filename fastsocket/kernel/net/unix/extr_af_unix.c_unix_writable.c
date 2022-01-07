
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_sndbuf; int sk_wmem_alloc; } ;


 int atomic_read (int *) ;

__attribute__((used)) static inline int unix_writable(struct sock *sk)
{
 return (atomic_read(&sk->sk_wmem_alloc) << 2) <= sk->sk_sndbuf;
}
