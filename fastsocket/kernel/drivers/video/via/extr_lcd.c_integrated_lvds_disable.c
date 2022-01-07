
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lvds_setting_information {int dummy; } ;
struct lvds_chip_information {int output_interface; } ;


 scalar_t__ BIT0 ;
 scalar_t__ BIT1 ;
 scalar_t__ BIT2 ;
 scalar_t__ BIT3 ;
 scalar_t__ BIT6 ;
 scalar_t__ BIT7 ;
 int CR6A ;
 int CR91 ;
 int CRD2 ;
 int CRD3 ;
 int CRD4 ;



 int SR2A ;
 int VIACR ;
 int VIASR ;
 int viafb_write_reg_mask (int ,int ,int,scalar_t__) ;

__attribute__((used)) static void integrated_lvds_disable(struct lvds_setting_information
        *plvds_setting_info,
        struct lvds_chip_information *plvds_chip_info)
{
 bool turn_off_first_powersequence = 0;
 bool turn_off_second_powersequence = 0;
 if (129 == plvds_chip_info->output_interface)
  turn_off_first_powersequence = 1;
 if (130 == plvds_chip_info->output_interface)
  turn_off_first_powersequence = 1;
 if (128 == plvds_chip_info->output_interface)
  turn_off_second_powersequence = 1;
 if (turn_off_second_powersequence) {



  viafb_write_reg_mask(CRD4, VIACR, 0, BIT1);


  viafb_write_reg_mask(CRD3, VIACR, 0xC0, BIT6 + BIT7);
 }
 if (turn_off_first_powersequence) {



  viafb_write_reg_mask(CR6A, VIACR, 0, BIT3);


  viafb_write_reg_mask(CR91, VIACR, 0xC0, BIT6 + BIT7);
 }


 viafb_write_reg_mask(SR2A, VIASR, 0, BIT0 + BIT1 + BIT2 + BIT3);


 switch (plvds_chip_info->output_interface) {
 case 130:
  {
   viafb_write_reg_mask(CRD2, VIACR, 0x80, BIT7);
   break;
  }

 case 128:
  {
   viafb_write_reg_mask(CRD2, VIACR, 0x40, BIT6);
   break;
  }

 case 129:
  {
   viafb_write_reg_mask(CRD2, VIACR, 0xC0, BIT6 + BIT7);
   break;
  }
 }
}
