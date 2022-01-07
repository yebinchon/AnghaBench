
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __chk_fail () ;
 void* memcpy (void*,void const*,size_t) ;

void *
__memcpy_chk (void *__restrict__ dest, const void *__restrict__ src,
              size_t len, size_t slen)
{
  if (len > slen)
    __chk_fail ();
  return memcpy (dest, src, len);
}
