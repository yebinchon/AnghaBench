
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int is_vmalloc_addr (void const*) ;
 int kfree (void const*) ;
 int vfree (void const*) ;

void
kmem_free(const void *ptr)
{
 if (!is_vmalloc_addr(ptr)) {
  kfree(ptr);
 } else {
  vfree(ptr);
 }
}
