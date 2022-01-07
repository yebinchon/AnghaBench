
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xencomm_handle {int dummy; } ;


 int BUG_ON (unsigned long) ;
 unsigned long XENCOMM_INLINE_FLAG ;
 int xencomm_is_phys_contiguous (unsigned long) ;
 scalar_t__ xencomm_pa (void*) ;

__attribute__((used)) static struct xencomm_handle *xencomm_create_inline(void *ptr)
{
 unsigned long paddr;

 BUG_ON(!xencomm_is_phys_contiguous((unsigned long)ptr));

 paddr = (unsigned long)xencomm_pa(ptr);
 BUG_ON(paddr & XENCOMM_INLINE_FLAG);
 return (struct xencomm_handle *)(paddr | XENCOMM_INLINE_FLAG);
}
