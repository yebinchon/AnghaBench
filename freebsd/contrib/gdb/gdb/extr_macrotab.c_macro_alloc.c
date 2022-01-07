
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macro_table {scalar_t__ obstack; } ;


 void* obstack_alloc (scalar_t__,int) ;
 void* xmalloc (int) ;

__attribute__((used)) static void *
macro_alloc (int size, struct macro_table *t)
{
  if (t->obstack)
    return obstack_alloc (t->obstack, size);
  else
    return xmalloc (size);
}
