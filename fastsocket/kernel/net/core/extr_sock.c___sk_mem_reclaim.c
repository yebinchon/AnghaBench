
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_forward_alloc; struct proto* sk_prot; } ;
struct proto {scalar_t__* sysctl_mem; scalar_t__* memory_pressure; int memory_allocated; } ;


 int SK_MEM_QUANTUM ;
 int SK_MEM_QUANTUM_SHIFT ;
 scalar_t__ atomic_read (int ) ;
 int atomic_sub (int,int ) ;

void __sk_mem_reclaim(struct sock *sk)
{
 struct proto *prot = sk->sk_prot;

 atomic_sub(sk->sk_forward_alloc >> SK_MEM_QUANTUM_SHIFT,
     prot->memory_allocated);
 sk->sk_forward_alloc &= SK_MEM_QUANTUM - 1;

 if (prot->memory_pressure && *prot->memory_pressure &&
     (atomic_read(prot->memory_allocated) < prot->sysctl_mem[0]))
  *prot->memory_pressure = 0;
}
