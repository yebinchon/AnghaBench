
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct vfe_gamma_lut_sel {int ch2BankSelect; int ch1BankSelect; int ch0BankSelect; } ;
struct VFE_GammaLutSelect_ConfigCmdType {int ch2BankSelect; int ch1BankSelect; int ch0BankSelect; } ;
typedef int cmd ;
struct TYPE_2__ {scalar_t__ vfebase; } ;


 int CDBG (char*,int ) ;
 scalar_t__ VFE_LUT_BANK_SEL ;
 TYPE_1__* ctrl ;
 int memset (struct VFE_GammaLutSelect_ConfigCmdType*,int ,int) ;
 int vfe_prog_hw (scalar_t__,int *,int) ;

__attribute__((used)) static void vfe_program_lut_bank_sel(struct vfe_gamma_lut_sel *in)
{
 struct VFE_GammaLutSelect_ConfigCmdType cmd;

 memset(&cmd, 0, sizeof(cmd));

 cmd.ch0BankSelect = in->ch0BankSelect;
 cmd.ch1BankSelect = in->ch1BankSelect;
 cmd.ch2BankSelect = in->ch2BankSelect;
 CDBG("VFE gamma lut bank selection is 0x%x\n", *((uint32_t *)&cmd));
 vfe_prog_hw(ctrl->vfebase + VFE_LUT_BANK_SEL,
  (uint32_t *)&cmd, sizeof(cmd));
}
