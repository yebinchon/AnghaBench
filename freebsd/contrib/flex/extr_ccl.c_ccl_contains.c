
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* ccllen ;
 int* cclmap ;
 int* cclng ;
 int const* ccltbl ;

__attribute__((used)) static bool
ccl_contains (const int cclp, const int ch)
{
 int ind, len, i;

 len = ccllen[cclp];
 ind = cclmap[cclp];

 for (i = 0; i < len; ++i)
  if (ccltbl[ind + i] == ch)
   return !cclng[cclp];

    return cclng[cclp];
}
