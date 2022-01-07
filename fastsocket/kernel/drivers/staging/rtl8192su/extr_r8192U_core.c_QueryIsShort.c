
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {scalar_t__ bUseShortPreamble; scalar_t__ bUseShortGI; } ;
typedef TYPE_1__ cb_desc ;


 int DESC90_RATEMCS15 ;

u8 QueryIsShort(u8 TxHT, u8 TxRate, cb_desc *tcb_desc)
{
 u8 tmp_Short;

 tmp_Short = (TxHT==1)?((tcb_desc->bUseShortGI)?1:0):((tcb_desc->bUseShortPreamble)?1:0);

 if(TxHT==1 && TxRate != DESC90_RATEMCS15)
  tmp_Short = 0;

 return tmp_Short;
}
