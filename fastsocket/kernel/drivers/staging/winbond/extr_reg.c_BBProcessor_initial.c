
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef size_t u32 ;
struct wb35_reg {int BB0C; int BB2C; int BB30; int BB3C; int BB50; int BB54; int BB58; int* SQ3_filter; void** LNAValue; void* BB4C; void* BB48; } ;
struct hw_data {int phy_type; size_t BB3c_cal; size_t BB54_cal; struct wb35_reg reg; } ;


 int AUTO_INCREMENT ;
 void* BB48_DEFAULT_AL2230_11G ;
 void* BB48_DEFAULT_WB242_11G ;
 void* BB4C_DEFAULT_AL2230_11G ;
 void* BB4C_DEFAULT_WB242_11G ;
 int BBProcessor_AL7230_2400 (struct hw_data*) ;
 size_t MAX_SQ3_FILTER_SIZE ;
 int Wb35Reg_BurstWrite (struct hw_data*,int,size_t*,int,int ) ;
 int Wb35Reg_Write (struct hw_data*,int,int) ;

void
BBProcessor_initial( struct hw_data * pHwData )
{
 struct wb35_reg *reg = &pHwData->reg;
 u32 i, pltmp[12];

    switch( pHwData->phy_type )
    {
  case 130:

   pltmp[0] = 0x16F47E77;
   pltmp[1] = 0x9AFFAEA4;
   pltmp[2] = 0x55D00A04;
   pltmp[3] = 0xEFFF1A34;
   reg->BB0C = 0xEFFF1A34;
   pltmp[4] = 0x0FABE0B7;
   pltmp[5] = 0x00CAA332;
   pltmp[6] = 0xF6632111;
   pltmp[7] = 0x0FA3F0ED;
   pltmp[8] = 0x04CC3640;
   pltmp[9] = 0x00002A79;
   pltmp[10] = (pHwData->phy_type==3) ? 0x40000a28 : 0x40000228;
   pltmp[11] = 0x232FDF30;
   reg->BB2C = 0x232FDF30;
   Wb35Reg_BurstWrite( pHwData, 0x1000, pltmp, 12, AUTO_INCREMENT );

   pltmp[0] = 0x00002C54;
   reg->BB30 = 0x00002C54;
   pltmp[1] = 0x00C0D6C5;
   pltmp[2] = 0x5B6C8769;
   pltmp[3] = 0x00000000;
   reg->BB3C = 0x00000000;
   pltmp[4] = 0x00003F29;
   pltmp[5] = 0x0EFEFBFE;
   pltmp[6] = 0x00453B24;
   pltmp[7] = 0x0E00FEFF;
   pltmp[8] = 0x27106208;
   reg->BB50 = 0x27106208;
   pltmp[9] = 0;
   reg->BB54 = 0x00000000;
   pltmp[10] = 0x64646464;
   reg->BB58 = 0x64646464;
   pltmp[11] = 0xAA0AC000;
   Wb35Reg_BurstWrite( pHwData, 0x1030, pltmp, 12, AUTO_INCREMENT );

   Wb35Reg_Write( pHwData, 0x1070, 0x00000045 );
   break;





  case 134:
  case 133:
  case 132:

   pltmp[0] = 0x16b47e77;
   pltmp[1] = 0x9affaea4;
   pltmp[2] = 0x55d00a04;
   pltmp[3] = 0xefff1a34;
   reg->BB0C = 0xefff1a34;
   pltmp[4] = 0x0fabe0b7;
   pltmp[5] = 0x00caa332;
   pltmp[6] = 0xf6632111;
   pltmp[7] = 0x0FA3F0ED;
   pltmp[8] = 0x04CC3640;
   pltmp[9] = 0x00002A79;
   pltmp[10] = 0x40000528;
   pltmp[11] = 0x232fdf30;
   reg->BB2C = 0x232fdf30;
   Wb35Reg_BurstWrite( pHwData, 0x1000, pltmp, 12, AUTO_INCREMENT );

   pltmp[0] = 0x00002C54;
   reg->BB30 = 0x00002C54;
   pltmp[1] = 0x00C0D6C5;
   pltmp[2] = 0x5B6C8769;
   pltmp[3] = 0x00000000;
   reg->BB3C = 0x00000000;
   pltmp[4] = 0x00003F29;
   pltmp[5] = 0x0EFEFBFE;
   pltmp[6] = 0x00453B24;
   pltmp[7] = 0x0D00FDFF;
   pltmp[8] = 0x27106208;
   reg->BB50 = 0x27106208;
   pltmp[9] = 0;
   reg->BB54 = 0x00000000;
   pltmp[10] = 0x64646464;
   reg->BB58 = 0x64646464;
   pltmp[11] = 0xAA28C000;
   Wb35Reg_BurstWrite( pHwData, 0x1030, pltmp, 12, AUTO_INCREMENT );

   Wb35Reg_Write( pHwData, 0x1070, 0x00000045 );
   break;

  case 131:

   pltmp[0] = 0x16b47e77;
   pltmp[1] = 0x9affaea4;
   pltmp[2] = 0x55d00a04;
   pltmp[3] = 0xf4ff1632;
   reg->BB0C = 0xf4ff1632;
   pltmp[4] = 0x0fabe0b7;
   pltmp[5] = 0x00caa332;
   pltmp[6] = 0xf8632112;
   pltmp[7] = 0x0FA3F0ED;
   pltmp[8] = 0x04CC3640;
   pltmp[9] = 0x00002A79;
   pltmp[10] = 0x40000528;
   pltmp[11] = 0x232fdf30;
   reg->BB2C = 0x232fdf30;
   Wb35Reg_BurstWrite( pHwData, 0x1000, pltmp, 12, AUTO_INCREMENT );

   pltmp[0] = 0x00002C54;
   reg->BB30 = 0x00002C54;
   pltmp[1] = 0x00C0D6C5;
   pltmp[2] = 0x5b2c8769;
   pltmp[3] = 0x00000000;
   reg->BB3C = 0x00000000;
   pltmp[4] = 0x00003F29;
   pltmp[5] = 0x0EFEFBFE;
   pltmp[6] = 0x002c2617;
   pltmp[7] = 0x0800feff;
   pltmp[8] = 0x27106208;
   reg->BB50 = 0x27106208;
   pltmp[9] = 0;
   reg->BB54 = 0x00000000;
   pltmp[10] = 0x64644a4a;
   reg->BB58 = 0x64646464;
   pltmp[11] = 0xAA28C000;
   Wb35Reg_BurstWrite( pHwData, 0x1030, pltmp, 12, AUTO_INCREMENT );

   Wb35Reg_Write( pHwData, 0x1070, 0x00000045 );
   break;

  case 137:

   pltmp[0] = 0X16764A77;
   pltmp[1] = 0x9affafb2;
   pltmp[2] = 0x55d00a04;
   pltmp[3] = 0xFFFd203c;
   reg->BB0C = 0xFFFd203c;
   pltmp[4] = 0X0FBFDCc5;
   pltmp[5] = 0x00caa332;
   pltmp[6] = 0XF6632111;
   pltmp[7] = 0x0FA3F0ED;
   pltmp[8] = 0x04C43640;
   pltmp[9] = 0x00002A79;
   pltmp[10] = 0X40000528;
   pltmp[11] = 0x232dfF30;
   reg->BB2C = 0x232dfF30;
   Wb35Reg_BurstWrite( pHwData, 0x1000, pltmp, 12, AUTO_INCREMENT );

   pltmp[0] = 0x00002C54;
   reg->BB30 = 0x00002C54;
   pltmp[1] = 0x00C0D6C5;
   pltmp[2] = 0x5B2C8769;
   pltmp[3] = 0x00000000;
   reg->BB3C = 0x00000000;
   pltmp[4] = 0x00003F29;
   pltmp[5] = 0x0EFEFBFE;
   pltmp[6] = BB48_DEFAULT_AL2230_11G;
   reg->BB48 = BB48_DEFAULT_AL2230_11G;
   pltmp[7] = BB4C_DEFAULT_AL2230_11G;
   reg->BB4C = BB4C_DEFAULT_AL2230_11G;
   pltmp[8] = 0x27106200;
   reg->BB50 = 0x27106200;
   pltmp[9] = 0;
   reg->BB54 = 0x00000000;
   pltmp[10] = 0x52524242;
   reg->BB58 = 0x52524242;
   pltmp[11] = 0xAA0AC000;
   Wb35Reg_BurstWrite( pHwData, 0x1030, pltmp, 12, AUTO_INCREMENT );

   Wb35Reg_Write( pHwData, 0x1070, 0x00000045 );
   break;

  case 136:

   pltmp[0] = 0X16764A77;
   pltmp[1] = 0x9affafb2;
   pltmp[2] = 0x55d00a04;
   pltmp[3] = 0xFFFd203c;
   reg->BB0C = 0xFFFd203c;
   pltmp[4] = 0X0FBFDCc5;
   pltmp[5] = 0x00caa332;
   pltmp[6] = 0XF6632111;
   pltmp[7] = 0x0FA3F0ED;
   pltmp[8] = 0x04C43640;
   pltmp[9] = 0x00002A79;
   pltmp[10] = 0X40000528;
   pltmp[11] = 0x232dfF30;
   reg->BB2C = 0x232dfF30;
   Wb35Reg_BurstWrite( pHwData, 0x1000, pltmp, 12, AUTO_INCREMENT );

   pltmp[0] = 0x00002C54;
   reg->BB30 = 0x00002C54;
   pltmp[1] = 0x00C0D6C5;
   pltmp[2] = 0x5B2C8769;
   pltmp[3] = 0x00000000;
   reg->BB3C = 0x00000000;
   pltmp[4] = 0x00003F29;
   pltmp[5] = 0x0EFEFBFE;
   pltmp[6] = BB48_DEFAULT_AL2230_11G;
   reg->BB48 = BB48_DEFAULT_AL2230_11G;
   pltmp[7] = BB4C_DEFAULT_AL2230_11G;
   reg->BB4C = BB4C_DEFAULT_AL2230_11G;
   pltmp[8] = 0x27106200;
   reg->BB50 = 0x27106200;
   pltmp[9] = 0;
   reg->BB54 = 0x00000000;
   pltmp[10] = 0x52523232;
   reg->BB58 = 0x52523232;
   pltmp[11] = 0xAA0AC000;
   Wb35Reg_BurstWrite( pHwData, 0x1030, pltmp, 12, AUTO_INCREMENT );

   Wb35Reg_Write( pHwData, 0x1070, 0x00000045 );
   break;

  case 135:
   BBProcessor_AL7230_2400( pHwData );

   Wb35Reg_Write( pHwData, 0x1070, 0x00000045 );
   break;

  case 129:
  case 128:

   pltmp[0] = 0x16A8525D;
   pltmp[1] = 0x9AFF9ABA;
   pltmp[2] = 0x55D00A04;
   pltmp[3] = 0xEEE91C32;
   reg->BB0C = 0xEEE91C32;
   pltmp[4] = 0x0FACDCC5;
   pltmp[5] = 0x000AA344;
   pltmp[6] = 0x22222221;
   pltmp[7] = 0x0FA3F0ED;
   pltmp[8] = 0x04CC3440;
   pltmp[9] = 0xA9002A79;
   pltmp[10] = 0x40000528;
   pltmp[11] = 0x23457F30;
   reg->BB2C = 0x23457F30;
   Wb35Reg_BurstWrite( pHwData, 0x1000, pltmp, 12, AUTO_INCREMENT );

   pltmp[0] = 0x00002C54;
   reg->BB30 = 0x00002C54;
   pltmp[1] = 0x00C0D6C5;
   pltmp[2] = 0x5B2C8769;
   pltmp[3] = pHwData->BB3c_cal;
   reg->BB3C = pHwData->BB3c_cal;
   pltmp[4] = 0x00003F29;
   pltmp[5] = 0x0EFEFBFE;
   pltmp[6] = BB48_DEFAULT_WB242_11G;
   reg->BB48 = BB48_DEFAULT_WB242_11G;
   pltmp[7] = BB4C_DEFAULT_WB242_11G;
   reg->BB4C = BB4C_DEFAULT_WB242_11G;
   pltmp[8] = 0x27106208;
   reg->BB50 = 0x27106208;
   pltmp[9] = pHwData->BB54_cal;
   reg->BB54 = pHwData->BB54_cal;
   pltmp[10] = 0x52523131;
   reg->BB58 = 0x52523131;
   pltmp[11] = 0xAA0AC000;
   Wb35Reg_BurstWrite( pHwData, 0x1030, pltmp, 12, AUTO_INCREMENT );

   Wb35Reg_Write( pHwData, 0x1070, 0x00000045 );
   break;
    }


 reg->LNAValue[0] = (u8)(reg->BB0C & 0xff);
 reg->LNAValue[1] = 0;
 reg->LNAValue[2] = (u8)((reg->BB0C & 0xff00)>>8);
 reg->LNAValue[3] = 0;


 for( i=0; i<MAX_SQ3_FILTER_SIZE; i++ )
  reg->SQ3_filter[i] = 0x2f;
}
