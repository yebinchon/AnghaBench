
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strncmp (char const*,char const*,size_t) ;

__attribute__((used)) static inline int
ustrncmp (const unsigned char *s1, const unsigned char *s2, size_t n)
{
  return strncmp ((const char *)s1, (const char *)s2, n);
}
