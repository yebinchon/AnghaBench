
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct hw_data {int* TxVgaFor24; } ;
struct TYPE_3__ {int band; int ChanNo; } ;
typedef TYPE_1__ ChanInfo ;





 int RFSynthesizer_SetPowerIndex (struct hw_data*,int) ;

void set_tx_power_per_channel_wb242( struct hw_data * pHwData, ChanInfo Channel)
{
 u8 index = 100;

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
   break;
 }
 RFSynthesizer_SetPowerIndex( pHwData, index );
}
