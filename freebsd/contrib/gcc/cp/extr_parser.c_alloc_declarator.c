
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int declarator_obstack ;
 void* obstack_alloc (int *,size_t) ;

__attribute__((used)) static inline void *
alloc_declarator (size_t bytes)
{
  return obstack_alloc (&declarator_obstack, bytes);
}
