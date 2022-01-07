
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const*,char const*) ;

__attribute__((used)) static inline int
ustrcmp (const unsigned char *s1, const unsigned char *s2)
{
  return strcmp ((const char *)s1, (const char *)s2);
}
