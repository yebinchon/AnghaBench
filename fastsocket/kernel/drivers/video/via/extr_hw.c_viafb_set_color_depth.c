
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIT6 ;
 int BIT7 ;
 int CR67 ;
 int IGA1 ;



 int SR15 ;
 int VIACR ;
 int VIASR ;
 int viafb_write_reg_mask (int ,int ,int,int) ;

void viafb_set_color_depth(int bpp_byte, int set_iga)
{
 if (set_iga == IGA1) {
  switch (bpp_byte) {
  case 128:
   viafb_write_reg_mask(SR15, VIASR, 0x22, 0x7E);
   break;
  case 130:
   viafb_write_reg_mask(SR15, VIASR, 0xB6, 0xFE);
   break;
  case 129:
   viafb_write_reg_mask(SR15, VIASR, 0xAE, 0xFE);
   break;
  }
 } else {
  switch (bpp_byte) {
  case 128:
   viafb_write_reg_mask(CR67, VIACR, 0x00, BIT6 + BIT7);
   break;
  case 130:
   viafb_write_reg_mask(CR67, VIACR, 0x40, BIT6 + BIT7);
   break;
  case 129:
   viafb_write_reg_mask(CR67, VIACR, 0xC0, BIT6 + BIT7);
   break;
  }
 }
}
