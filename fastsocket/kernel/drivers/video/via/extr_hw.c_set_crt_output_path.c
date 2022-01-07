
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ BIT3 ;
 scalar_t__ BIT4 ;
 scalar_t__ BIT5 ;
 scalar_t__ BIT6 ;
 scalar_t__ BIT7 ;
 int CR36 ;
 int CR6A ;
 int CR6B ;



 int SR16 ;
 int VIACR ;
 int VIASR ;
 int viafb_write_reg_mask (int ,int ,int,scalar_t__) ;

__attribute__((used)) static void set_crt_output_path(int set_iga)
{
 viafb_write_reg_mask(CR36, VIACR, 0x00, BIT4 + BIT5);

 switch (set_iga) {
 case 130:
  viafb_write_reg_mask(SR16, VIASR, 0x00, BIT6);
  break;
 case 128:
 case 129:
  viafb_write_reg_mask(CR6A, VIACR, 0xC0, BIT6 + BIT7);
  viafb_write_reg_mask(SR16, VIASR, 0x40, BIT6);
  if (set_iga == 129)
   viafb_write_reg_mask(CR6B, VIACR, 0x08, BIT3);
  break;
 }
}
