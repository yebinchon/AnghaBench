
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* chip_info; } ;
struct TYPE_3__ {int gfx_chip_name; } ;


 scalar_t__ BIT0 ;
 scalar_t__ BIT1 ;
 scalar_t__ BIT2 ;
 scalar_t__ BIT3 ;
 scalar_t__ BIT4 ;
 scalar_t__ BIT5 ;
 scalar_t__ BIT6 ;
 scalar_t__ BIT7 ;
 int CR6B ;
 int CR6C ;
 int CR79 ;
 int CR93 ;
 int CR96 ;
 int CR97 ;
 int CR99 ;
 int CR9B ;
 int IGA1 ;
 int IGA2 ;





 int SR1E ;
 int SR2A ;
 int UNICHROME_CLE266 ;
 int VIACR ;
 int VIASR ;
 int dvi_patch_skew_dvp0 () ;
 int dvi_patch_skew_dvp1 () ;
 int dvi_patch_skew_dvp_low () ;
 int enable_second_display_channel () ;
 int viafb_write_reg_mask (int ,int ,int,scalar_t__) ;
 TYPE_2__* viaparinfo ;

__attribute__((used)) static void set_dvi_output_path(int set_iga, int output_interface)
{
 switch (output_interface) {
 case 130:
  viafb_write_reg_mask(CR6B, VIACR, 0x01, BIT0);

  if (set_iga == IGA1) {
   viafb_write_reg_mask(CR96, VIACR, 0x00, BIT4);
   viafb_write_reg_mask(CR6C, VIACR, 0x21, BIT0 +
    BIT5 + BIT7);
  } else {
   viafb_write_reg_mask(CR96, VIACR, 0x10, BIT4);
   viafb_write_reg_mask(CR6C, VIACR, 0xA1, BIT0 +
    BIT5 + BIT7);
  }

  viafb_write_reg_mask(SR1E, VIASR, 0xC0, BIT7 + BIT6);

  dvi_patch_skew_dvp0();
  break;

 case 129:
  if (viaparinfo->chip_info->gfx_chip_name == UNICHROME_CLE266) {
   if (set_iga == IGA1)
    viafb_write_reg_mask(CR93, VIACR, 0x21,
            BIT0 + BIT5 + BIT7);
   else
    viafb_write_reg_mask(CR93, VIACR, 0xA1,
            BIT0 + BIT5 + BIT7);
  } else {
   if (set_iga == IGA1)
    viafb_write_reg_mask(CR9B, VIACR, 0x00, BIT4);
   else
    viafb_write_reg_mask(CR9B, VIACR, 0x10, BIT4);
  }

  viafb_write_reg_mask(SR1E, VIASR, 0x30, BIT4 + BIT5);
  dvi_patch_skew_dvp1();
  break;
 case 132:
  if (viaparinfo->chip_info->gfx_chip_name != UNICHROME_CLE266) {
   if (set_iga == IGA1) {
    viafb_write_reg_mask(CR96, VIACR, 0x00, BIT4);
    viafb_write_reg_mask(CR97, VIACR, 0x03,
            BIT0 + BIT1 + BIT4);
   } else {
    viafb_write_reg_mask(CR96, VIACR, 0x10, BIT4);
    viafb_write_reg_mask(CR97, VIACR, 0x13,
            BIT0 + BIT1 + BIT4);
   }
  }
  viafb_write_reg_mask(SR2A, VIASR, 0x0C, BIT2 + BIT3);
  break;

 case 131:
  if (viaparinfo->chip_info->gfx_chip_name == UNICHROME_CLE266)
   break;

  if (set_iga == IGA1) {
   viafb_write_reg_mask(CR99, VIACR, 0x00, BIT4);
   viafb_write_reg_mask(CR9B, VIACR, 0x00, BIT4);
  } else {
   viafb_write_reg_mask(CR99, VIACR, 0x10, BIT4);
   viafb_write_reg_mask(CR9B, VIACR, 0x10, BIT4);
  }

  viafb_write_reg_mask(SR2A, VIASR, 0x03, BIT0 + BIT1);
  dvi_patch_skew_dvp_low();
  break;

 case 128:
  if (set_iga == IGA1)
   viafb_write_reg_mask(CR99, VIACR, 0x00, BIT4);
  else
   viafb_write_reg_mask(CR99, VIACR, 0x10, BIT4);
  break;
 }

 if (set_iga == IGA2) {
  enable_second_display_channel();

  viafb_write_reg_mask(CR79, VIACR, 0x00, BIT0);
 }
}
