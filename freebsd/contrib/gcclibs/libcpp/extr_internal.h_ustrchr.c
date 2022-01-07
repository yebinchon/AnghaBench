
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strchr (char const*,int) ;

__attribute__((used)) static inline unsigned char *
ustrchr (const unsigned char *s1, int c)
{
  return (unsigned char *) strchr ((const char *)s1, c);
}
