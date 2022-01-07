
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct hw_data {int* TxVgaFor24; TYPE_1__* TxVgaFor50; } ;
struct TYPE_5__ {int band; int ChanNo; } ;
struct TYPE_4__ {int TxVgaValue; int ChanNo; } ;
typedef TYPE_2__ ChanInfo ;





 int RFSynthesizer_SetPowerIndex (struct hw_data*,int) ;

void set_tx_power_per_channel_al7230( struct hw_data * pHwData, ChanInfo Channel)
{
 u8 i, index = 100;

 switch ( Channel.band )
 {
  case 130:
  case 129:
   {
    if (pHwData->TxVgaFor24[Channel.ChanNo - 1] != 0xff)
     index = pHwData->TxVgaFor24[Channel.ChanNo - 1];
   }
   break;
  case 128:
   {
    for (i =0; i<35; i++)
    {
     if (Channel.ChanNo == pHwData->TxVgaFor50[i].ChanNo)
     {
      if (pHwData->TxVgaFor50[i].TxVgaValue != 0xff)
       index = pHwData->TxVgaFor50[i].TxVgaValue;
      break;
     }
    }
   }
   break;
 }
 RFSynthesizer_SetPowerIndex( pHwData, index );
}
