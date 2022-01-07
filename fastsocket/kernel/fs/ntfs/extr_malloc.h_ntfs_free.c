
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int is_vmalloc_addr (void*) ;
 int kfree (void*) ;
 int vfree (void*) ;

__attribute__((used)) static inline void ntfs_free(void *addr)
{
 if (!is_vmalloc_addr(addr)) {
  kfree(addr);

  return;
 }
 vfree(addr);
}
