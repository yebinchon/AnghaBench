
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcspn (char const*,char const*) ;

__attribute__((used)) static inline int
ustrcspn (const unsigned char *s1, const char *s2)
{
  return strcspn ((const char *)s1, s2);
}
