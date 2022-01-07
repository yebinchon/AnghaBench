
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ xstrdup (char const*) ;

__attribute__((used)) static inline unsigned char *
uxstrdup (const unsigned char *s1)
{
  return (unsigned char *) xstrdup ((const char *)s1);
}
