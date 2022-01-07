
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIT0 ;
 int BIT7 ;
 int CR11 ;
 int CR47 ;
 int VIACR ;
 int viafb_write_reg_mask (int ,int ,int ,int ) ;

void viafb_unlock_crt(void)
{
 viafb_write_reg_mask(CR11, VIACR, 0, BIT7);
 viafb_write_reg_mask(CR47, VIACR, 0, BIT0);
}
