
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ HDRLEN_KMALLOC ;
 scalar_t__ PAGE_SIZE ;

__attribute__((used)) static inline int rcu_use_vmalloc(int size)
{

 if (HDRLEN_KMALLOC + size > PAGE_SIZE)
  return 1;
 return 0;
}
