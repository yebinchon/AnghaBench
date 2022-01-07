
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ yyyRCT ;
struct TYPE_3__ {int refCountListLen; int cLlen; struct TYPE_3__** cL; scalar_t__* refCountList; } ;
typedef TYPE_1__ yyyGNT ;



void yyyCheckUnsolvedInstTrav(yyyGNT *pNode,long *nNZrc,long *cycleSum)
  {yyyGNT **yyyCLpdum;
   yyyRCT *rcp;
   int i;


   rcp = pNode->refCountList;
   i = pNode->refCountListLen;
   while (i--)
      if (*rcp++) {*cycleSum += *(rcp - 1); (*nNZrc)++;}
   yyyCLpdum = pNode->cL;
   i = pNode->cLlen;
   while (i--)
     {
      yyyCheckUnsolvedInstTrav(*yyyCLpdum,nNZrc,cycleSum);
      yyyCLpdum++;
     }
  }
