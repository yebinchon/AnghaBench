
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (char const) ;

unsigned int
msymbol_hash_iw (const char *string)
{
  unsigned int hash = 0;
  while (*string && *string != '(')
    {
      while (isspace (*string))
 ++string;
      if (*string && *string != '(')
 {
   hash = hash * 67 + *string - 113;
   ++string;
 }
    }
  return hash;
}
