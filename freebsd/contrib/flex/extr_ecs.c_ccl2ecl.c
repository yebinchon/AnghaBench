
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* ccllen ;
 int* cclmap ;
 int* ccltbl ;
 int* ecgroup ;
 int lastccl ;

void ccl2ecl ()
{
 int i, ich, newlen, cclp, ccls, cclmec;

 for (i = 1; i <= lastccl; ++i) {







  newlen = 0;
  cclp = cclmap[i];

  for (ccls = 0; ccls < ccllen[i]; ++ccls) {
   ich = ccltbl[cclp + ccls];
   cclmec = ecgroup[ich];

   if (cclmec > 0) {
    ccltbl[cclp + newlen] = cclmec;
    ++newlen;
   }
  }

  ccllen[i] = newlen;
 }
}
