
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
struct hw_data {void** TxVgaSettingInEEPROM; scalar_t__ phy_type; TYPE_1__* TxVgaFor50; void** TxVgaFor24; } ;
typedef int s16 ;
struct TYPE_2__ {int ChanNo; void* TxVgaValue; } ;


 int DataDmp (void**,int,int ) ;
 scalar_t__ RF_AIROHA_7230 ;
 int printk (char*) ;

void EEPROMTxVgaAdjust( struct hw_data * pHwData )
{
 u8 * pTxVga = pHwData->TxVgaSettingInEEPROM;
 s16 i, stmp;



 stmp = pTxVga[1] - pTxVga[0];
 for( i=0; i<5; i++ )
  pHwData->TxVgaFor24[i] = pTxVga[0] + stmp*i/4;

 stmp = pTxVga[2] - pTxVga[1];
 for( i=5; i<10; i++ )
  pHwData->TxVgaFor24[i] = pTxVga[1] + stmp*(i-5)/4;

 stmp = pTxVga[3] - pTxVga[2];
 for( i=10; i<13; i++ )
  pHwData->TxVgaFor24[i] = pTxVga[2] + stmp*(i-10)/2;

 pHwData->TxVgaFor24[13] = pTxVga[3];


 if( pHwData->phy_type == RF_AIROHA_7230 )
 {

  pHwData->TxVgaFor50[0].ChanNo = 184;
  pHwData->TxVgaFor50[0].TxVgaValue = pTxVga[4];

  pHwData->TxVgaFor50[3].ChanNo = 196;
  pHwData->TxVgaFor50[3].TxVgaValue = pTxVga[5];

  pHwData->TxVgaFor50[1].ChanNo = 188;
  pHwData->TxVgaFor50[2].ChanNo = 192;
  stmp = pTxVga[5] - pTxVga[4];
  pHwData->TxVgaFor50[2].TxVgaValue = pTxVga[5] - stmp/3;
  pHwData->TxVgaFor50[1].TxVgaValue = pTxVga[5] - stmp*2/3;


  pHwData->TxVgaFor50[6].ChanNo = 16;
  pHwData->TxVgaFor50[6].TxVgaValue = pTxVga[6];
  pHwData->TxVgaFor50[4].ChanNo = 8;
  pHwData->TxVgaFor50[4].TxVgaValue = pTxVga[6];
  pHwData->TxVgaFor50[5].ChanNo = 12;
  pHwData->TxVgaFor50[5].TxVgaValue = pTxVga[6];


  pHwData->TxVgaFor50[8].ChanNo = 36;
  pHwData->TxVgaFor50[8].TxVgaValue = pTxVga[7];
  pHwData->TxVgaFor50[7].ChanNo = 34;
  pHwData->TxVgaFor50[7].TxVgaValue = pTxVga[7];
  pHwData->TxVgaFor50[9].ChanNo = 38;
  pHwData->TxVgaFor50[9].TxVgaValue = pTxVga[7];


  pHwData->TxVgaFor50[10].ChanNo = 40;
  pHwData->TxVgaFor50[10].TxVgaValue = pTxVga[8];

  pHwData->TxVgaFor50[14].ChanNo = 48;
  pHwData->TxVgaFor50[14].TxVgaValue = pTxVga[9];

  pHwData->TxVgaFor50[11].ChanNo = 42;
  pHwData->TxVgaFor50[12].ChanNo = 44;
  pHwData->TxVgaFor50[13].ChanNo = 46;
  stmp = pTxVga[9] - pTxVga[8];
  pHwData->TxVgaFor50[13].TxVgaValue = pTxVga[9] - stmp/4;
  pHwData->TxVgaFor50[12].TxVgaValue = pTxVga[9] - stmp*2/4;
  pHwData->TxVgaFor50[11].TxVgaValue = pTxVga[9] - stmp*3/4;


  pHwData->TxVgaFor50[15].ChanNo = 52;
  pHwData->TxVgaFor50[15].TxVgaValue = pTxVga[10];

  pHwData->TxVgaFor50[18].ChanNo = 64;
  pHwData->TxVgaFor50[18].TxVgaValue = pTxVga[11];

  pHwData->TxVgaFor50[16].ChanNo = 56;
  pHwData->TxVgaFor50[17].ChanNo = 60;
  stmp = pTxVga[11] - pTxVga[10];
  pHwData->TxVgaFor50[17].TxVgaValue = pTxVga[11] - stmp/3;
  pHwData->TxVgaFor50[16].TxVgaValue = pTxVga[11] - stmp*2/3;


  pHwData->TxVgaFor50[19].ChanNo = 100;
  pHwData->TxVgaFor50[19].TxVgaValue = pTxVga[12];

  pHwData->TxVgaFor50[22].ChanNo = 112;
  pHwData->TxVgaFor50[22].TxVgaValue = pTxVga[13];

  pHwData->TxVgaFor50[20].ChanNo = 104;
  pHwData->TxVgaFor50[21].ChanNo = 108;
  stmp = pTxVga[13] - pTxVga[12];
  pHwData->TxVgaFor50[21].TxVgaValue = pTxVga[13] - stmp/3;
  pHwData->TxVgaFor50[20].TxVgaValue = pTxVga[13] - stmp*2/3;


  pHwData->TxVgaFor50[26].ChanNo = 128;
  pHwData->TxVgaFor50[26].TxVgaValue = pTxVga[14];

  pHwData->TxVgaFor50[23].ChanNo = 116;
  pHwData->TxVgaFor50[24].ChanNo = 120;
  pHwData->TxVgaFor50[25].ChanNo = 124;
  stmp = pTxVga[14] - pTxVga[13];
  pHwData->TxVgaFor50[25].TxVgaValue = pTxVga[14] - stmp/4;
  pHwData->TxVgaFor50[24].TxVgaValue = pTxVga[14] - stmp*2/4;
  pHwData->TxVgaFor50[23].TxVgaValue = pTxVga[14] - stmp*3/4;


  pHwData->TxVgaFor50[29].ChanNo = 140;
  pHwData->TxVgaFor50[29].TxVgaValue = pTxVga[15];

  pHwData->TxVgaFor50[27].ChanNo = 132;
  pHwData->TxVgaFor50[28].ChanNo = 136;
  stmp = pTxVga[15] - pTxVga[14];
  pHwData->TxVgaFor50[28].TxVgaValue = pTxVga[15] - stmp/3;
  pHwData->TxVgaFor50[27].TxVgaValue = pTxVga[15] - stmp*2/3;


  pHwData->TxVgaFor50[30].ChanNo = 149;
  pHwData->TxVgaFor50[30].TxVgaValue = pTxVga[16];

  pHwData->TxVgaFor50[34].ChanNo = 165;
  pHwData->TxVgaFor50[34].TxVgaValue = pTxVga[17];

  pHwData->TxVgaFor50[31].ChanNo = 153;
  pHwData->TxVgaFor50[32].ChanNo = 157;
  pHwData->TxVgaFor50[33].ChanNo = 161;
  stmp = pTxVga[17] - pTxVga[16];
  pHwData->TxVgaFor50[33].TxVgaValue = pTxVga[17] - stmp/4;
  pHwData->TxVgaFor50[32].TxVgaValue = pTxVga[17] - stmp*2/4;
  pHwData->TxVgaFor50[31].TxVgaValue = pTxVga[17] - stmp*3/4;
 }







}
