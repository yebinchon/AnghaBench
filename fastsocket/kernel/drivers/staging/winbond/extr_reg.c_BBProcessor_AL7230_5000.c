
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wb35_reg {int BB0C; int BB2C; int BB3C; int BB50; int BB54; int BB58; } ;
struct hw_data {struct wb35_reg reg; } ;


 int AUTO_INCREMENT ;
 int Wb35Reg_BurstWrite (struct hw_data*,int,int*,int,int ) ;

void BBProcessor_AL7230_5000( struct hw_data * pHwData)
{
 struct wb35_reg *reg = &pHwData->reg;
 u32 pltmp[12];

 pltmp[0] = 0x16AA6678;
 pltmp[1] = 0x9AFFA0B2;
 pltmp[2] = 0x55D00A04;
 pltmp[3] = 0xEFFF233E;
 reg->BB0C = 0xEFFF233E;
 pltmp[4] = 0x0FacDCC5;
 pltmp[5] = 0x00CAA333;
 pltmp[6] = 0xF2432111;
 pltmp[7] = 0x0FA3F0ED;
 pltmp[8] = 0x05C43440;
 pltmp[9] = 0x00002A79;
 pltmp[10] = 0x40000528;
 pltmp[11] = 0x232FDF30;
 reg->BB2C = 0x232FDF30;
 Wb35Reg_BurstWrite( pHwData, 0x1000, pltmp, 12, AUTO_INCREMENT );

 pltmp[0] = 0x80002C7C;
 pltmp[1] = 0x00C0D6C5;
 pltmp[2] = 0x5B2C8769;
 pltmp[3] = 0x00000000;
 reg->BB3C = 0x00000000;
 pltmp[4] = 0x00003F29;
 pltmp[5] = 0x0EFEFBFE;
 pltmp[6] = 0x00332C1B;
 pltmp[7] = 0x0A00FEFF;
 pltmp[8] = 0x2B107208;
 reg->BB50 = 0x2B107208;
 pltmp[9] = 0;
 reg->BB54 = 0x00000000;
 pltmp[10] = 0x52524242;
 reg->BB58 = 0x52524242;
 pltmp[11] = 0xAA0AC000;
 Wb35Reg_BurstWrite( pHwData, 0x1030, pltmp, 12, AUTO_INCREMENT );

}
