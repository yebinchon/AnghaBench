
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int ) ;
 int __vunmap (void const*,int) ;
 int in_interrupt () ;
 int kmemleak_free (void const*) ;

void vfree(const void *addr)
{
 BUG_ON(in_interrupt());

 kmemleak_free(addr);

 __vunmap(addr, 1);
}
