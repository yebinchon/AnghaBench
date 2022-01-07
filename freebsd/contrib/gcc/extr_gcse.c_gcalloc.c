
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t bytes_used ;
 void* xcalloc (size_t,size_t) ;

__attribute__((used)) static void *
gcalloc (size_t nelem, size_t elsize)
{
  bytes_used += nelem * elsize;
  return xcalloc (nelem, elsize);
}
