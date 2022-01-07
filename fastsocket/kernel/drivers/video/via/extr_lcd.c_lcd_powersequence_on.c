
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int CR6A ;
 int CR91 ;
 int** PowerSequenceOn ;
 int VIACR ;
 int udelay (int) ;
 int viafb_write_reg_mask (int ,int ,int,int) ;

__attribute__((used)) static void lcd_powersequence_on(void)
{
 int i, mask, data;


 viafb_write_reg_mask(CR91, VIACR, 0x11, 0x11);


 viafb_write_reg_mask(CR6A, VIACR, 0x08, 0x08);

 for (i = 0; i < 3; i++) {
  mask = PowerSequenceOn[0][i];
  data = PowerSequenceOn[1][i] & mask;
  viafb_write_reg_mask(CR91, VIACR, (u8) data, (u8) mask);
  udelay(PowerSequenceOn[2][i]);
 }

 udelay(1);
}
