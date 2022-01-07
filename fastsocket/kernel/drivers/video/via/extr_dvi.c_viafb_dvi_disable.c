
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* chip_info; } ;
struct TYPE_5__ {scalar_t__ output_interface; } ;
struct TYPE_4__ {TYPE_2__ tmds_chip_info; } ;


 int CRD2 ;
 scalar_t__ INTERFACE_DFP_HIGH ;
 scalar_t__ INTERFACE_DFP_LOW ;
 scalar_t__ INTERFACE_DVP0 ;
 scalar_t__ INTERFACE_DVP1 ;
 scalar_t__ INTERFACE_TMDS ;
 int SR1E ;
 int SR2A ;
 int VIACR ;
 int VIASR ;
 int viafb_read_reg (int ,int ) ;
 int viafb_write_reg (int ,int ,int) ;
 TYPE_3__* viaparinfo ;

void viafb_dvi_disable(void)
{
 if (viaparinfo->chip_info->
  tmds_chip_info.output_interface == INTERFACE_DVP0)
  viafb_write_reg(SR1E, VIASR,
  viafb_read_reg(VIASR, SR1E) & (~0xC0));

 if (viaparinfo->chip_info->
  tmds_chip_info.output_interface == INTERFACE_DVP1)
  viafb_write_reg(SR1E, VIASR,
  viafb_read_reg(VIASR, SR1E) & (~0x30));

 if (viaparinfo->chip_info->
  tmds_chip_info.output_interface == INTERFACE_DFP_HIGH)
  viafb_write_reg(SR2A, VIASR,
  viafb_read_reg(VIASR, SR2A) & (~0x0C));

 if (viaparinfo->chip_info->
  tmds_chip_info.output_interface == INTERFACE_DFP_LOW)
  viafb_write_reg(SR2A, VIASR,
  viafb_read_reg(VIASR, SR2A) & (~0x03));

 if (viaparinfo->chip_info->
  tmds_chip_info.output_interface == INTERFACE_TMDS)

  viafb_write_reg(CRD2, VIACR,
  viafb_read_reg(VIACR, CRD2) | 0x08);
}
