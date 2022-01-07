
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ BIT4 ;
 scalar_t__ BIT5 ;
 int CR36 ;
 int VIACR ;
 int viafb_write_reg_mask (int ,int ,scalar_t__,scalar_t__) ;

void viafb_crt_disable(void)
{
 viafb_write_reg_mask(CR36, VIACR, BIT5 + BIT4, BIT5 + BIT4);
}
