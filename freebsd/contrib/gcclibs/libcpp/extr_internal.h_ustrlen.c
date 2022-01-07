
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t strlen (char const*) ;

__attribute__((used)) static inline size_t
ustrlen (const unsigned char *s1)
{
  return strlen ((const char *)s1);
}
