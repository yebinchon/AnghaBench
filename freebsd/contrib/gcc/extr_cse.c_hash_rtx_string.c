
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned
hash_rtx_string (const char *ps)
{
  unsigned hash = 0;
  const unsigned char *p = (const unsigned char *) ps;

  if (p)
    while (*p)
      hash += *p++;

  return hash;
}
