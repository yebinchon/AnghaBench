
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char const* const,char const*) ;

__attribute__((used)) static int
hash_string_eq (const void *s1_p, const void *s2_p)
{
  const char *const *s1 = (const char *const *) s1_p;
  const char *s2 = (const char *) s2_p;
  return strcmp (*s1, s2) == 0;
}
