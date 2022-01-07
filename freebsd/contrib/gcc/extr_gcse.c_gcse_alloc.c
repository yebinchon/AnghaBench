
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long bytes_used ;
 int gcse_obstack ;
 void* obstack_alloc (int *,unsigned long) ;

__attribute__((used)) static void *
gcse_alloc (unsigned long size)
{
  bytes_used += size;
  return obstack_alloc (&gcse_obstack, size);
}
