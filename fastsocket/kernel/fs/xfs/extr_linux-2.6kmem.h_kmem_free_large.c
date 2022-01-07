
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vfree (void*) ;

__attribute__((used)) static inline void kmem_free_large(void *ptr)
{
 vfree(ptr);
}
