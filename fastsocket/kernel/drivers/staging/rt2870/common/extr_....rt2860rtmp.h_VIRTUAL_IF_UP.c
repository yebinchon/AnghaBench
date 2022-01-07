
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int net_dev; } ;
typedef TYPE_1__* PRTMP_ADAPTER ;
typedef int INT ;


 int VIRTUAL_IF_INC (TYPE_1__*) ;
 scalar_t__ VIRTUAL_IF_NUM (TYPE_1__*) ;
 scalar_t__ rt28xx_open (int ) ;

__inline INT VIRTUAL_IF_UP(PRTMP_ADAPTER pAd)
{
 if (VIRTUAL_IF_NUM(pAd) == 0)
 {
  if (rt28xx_open(pAd->net_dev) != 0)
   return -1;
 }
 else
 {
 }
 VIRTUAL_IF_INC(pAd);
 return 0;
}
