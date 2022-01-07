
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIT7 ;
 int CR11 ;
 int VIACR ;
 int viafb_write_reg_mask (int ,int ,int ,int ) ;

void viafb_lock_crt(void)
{
 viafb_write_reg_mask(CR11, VIACR, BIT7, BIT7);
}
