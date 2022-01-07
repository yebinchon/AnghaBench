
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_omem_alloc; } ;
typedef int gfp_t ;


 int atomic_add (int,int *) ;
 unsigned int atomic_read (int *) ;
 int atomic_sub (int,int *) ;
 void* kmalloc (int,int ) ;
 unsigned int sysctl_optmem_max ;

void *sock_kmalloc(struct sock *sk, int size, gfp_t priority)
{
 if ((unsigned)size <= sysctl_optmem_max &&
     atomic_read(&sk->sk_omem_alloc) + size < sysctl_optmem_max) {
  void *mem;



  atomic_add(size, &sk->sk_omem_alloc);
  mem = kmalloc(size, priority);
  if (mem)
   return mem;
  atomic_sub(size, &sk->sk_omem_alloc);
 }
 return ((void*)0);
}
