
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int blue; int green; int red; } ;


 scalar_t__ BIT0 ;
 scalar_t__ BIT6 ;
 scalar_t__ BIT7 ;
 int CR6A ;
 int IGA1 ;
 int SR1A ;
 int SR1B ;
 int VIACR ;
 int VIASR ;
 TYPE_1__* palLUT_table ;
 int viafb_read_reg (int ,int ) ;
 int viafb_write_reg (int ,int ,int ) ;
 int viafb_write_reg_mask (int ,int ,int,scalar_t__) ;
 int write_dac_reg (int,int ,int ,int ) ;

void viafb_init_dac(int set_iga)
{
 int i;
 u8 tmp;

 if (set_iga == IGA1) {

  viafb_write_reg_mask(SR1A, VIASR, 0x00, BIT0);

  viafb_write_reg_mask(SR1B, VIASR, 0x00, BIT7 + BIT6);
  for (i = 0; i < 256; i++) {
   write_dac_reg(i, palLUT_table[i].red,
          palLUT_table[i].green,
          palLUT_table[i].blue);
  }

  viafb_write_reg_mask(SR1B, VIASR, 0xC0, BIT7 + BIT6);
 } else {
  tmp = viafb_read_reg(VIACR, CR6A);

  viafb_write_reg_mask(CR6A, VIACR, 0x40, BIT6);
  viafb_write_reg_mask(SR1A, VIASR, 0x01, BIT0);
  for (i = 0; i < 256; i++) {
   write_dac_reg(i, palLUT_table[i].red,
          palLUT_table[i].green,
          palLUT_table[i].blue);
  }

  viafb_write_reg_mask(SR1A, VIASR, 0x00, BIT0);
  viafb_write_reg(CR6A, VIACR, tmp);
 }
}
