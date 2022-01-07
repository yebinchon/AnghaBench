
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcmp (void const*,void const*,size_t) ;

int
bcmp (const void *s1, const void *s2, size_t count)
{
  return memcmp (s1, s2, count);
}
