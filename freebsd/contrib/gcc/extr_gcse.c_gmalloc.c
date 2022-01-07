
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t bytes_used ;
 void* xmalloc (size_t) ;

__attribute__((used)) static void *
gmalloc (size_t size)
{
  bytes_used += size;
  return xmalloc (size);
}
