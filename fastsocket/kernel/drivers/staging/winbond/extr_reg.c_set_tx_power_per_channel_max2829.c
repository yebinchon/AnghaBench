
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_data {int dummy; } ;
typedef int ChanInfo ;


 int RFSynthesizer_SetPowerIndex (struct hw_data*,int) ;

void set_tx_power_per_channel_max2829( struct hw_data * pHwData, ChanInfo Channel)
{
 RFSynthesizer_SetPowerIndex( pHwData, 100 );
}
