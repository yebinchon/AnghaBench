
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __chk_fail () ;
 void* memset (void*,int,size_t) ;

void *
__memset_chk (void *dest, int val, size_t len, size_t slen)
{
  if (len > slen)
    __chk_fail ();
  return memset (dest, val, len);
}
