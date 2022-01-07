
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* memcpy (int ,void const*,size_t) ;
 int xmalloc (size_t) ;

void *
xclone (void const *p, size_t s)
{
  return memcpy (xmalloc (s), p, s);
}
