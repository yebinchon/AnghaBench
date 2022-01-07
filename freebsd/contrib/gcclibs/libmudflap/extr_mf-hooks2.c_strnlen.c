
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline size_t (strnlen) (const char* str, size_t n)
{
  const char *s;

  for (s = str; n && *s; ++s, --n)
    ;
  return (s - str);
}
