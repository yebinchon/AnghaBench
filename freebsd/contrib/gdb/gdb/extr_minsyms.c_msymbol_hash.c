
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
unsigned int
msymbol_hash (const char *string)
{
  unsigned int hash = 0;
  for (; *string; ++string)
    hash = hash * 67 + *string - 113;
  return hash;
}
