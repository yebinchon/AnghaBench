
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* xrealloc (void*,size_t) ;

__attribute__((used)) static void *
grealloc (void *ptr, size_t size)
{
  return xrealloc (ptr, size);
}
