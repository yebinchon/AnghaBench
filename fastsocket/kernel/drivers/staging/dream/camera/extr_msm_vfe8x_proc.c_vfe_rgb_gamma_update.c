
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vfe_cmd_rgb_gamma_config {int channelSelect; int table; int enable; } ;
struct TYPE_5__ {int ch0BankSelect; int ch1BankSelect; int ch2BankSelect; } ;
struct TYPE_4__ {int rgbLUTEnable; } ;
struct TYPE_6__ {TYPE_2__ vfeGammaLutSel; TYPE_1__ vfeModuleEnableLocal; } ;


 int EINVAL ;







 TYPE_3__* ctrl ;
 int vfe_program_lut_bank_sel (TYPE_2__*) ;
 int vfe_write_gamma_table (int,int,int ) ;

int vfe_rgb_gamma_update(struct vfe_cmd_rgb_gamma_config *in)
{
 int rc = 0;

 ctrl->vfeModuleEnableLocal.rgbLUTEnable = in->enable;

 switch (in->channelSelect) {
 case 131:
  ctrl->vfeGammaLutSel.ch0BankSelect ^= 1;
  vfe_write_gamma_table(0,
   ctrl->vfeGammaLutSel.ch0BankSelect, in->table);
  break;

 case 129:
  ctrl->vfeGammaLutSel.ch1BankSelect ^= 1;
  vfe_write_gamma_table(1,
   ctrl->vfeGammaLutSel.ch1BankSelect, in->table);
  break;

 case 128:
  ctrl->vfeGammaLutSel.ch2BankSelect ^= 1;
  vfe_write_gamma_table(2,
   ctrl->vfeGammaLutSel.ch2BankSelect, in->table);
  break;

 case 133:
  ctrl->vfeGammaLutSel.ch0BankSelect ^= 1;
  ctrl->vfeGammaLutSel.ch1BankSelect ^= 1;
  vfe_write_gamma_table(0, ctrl->vfeGammaLutSel.ch0BankSelect,
   in->table);
  vfe_write_gamma_table(1, ctrl->vfeGammaLutSel.ch1BankSelect,
   in->table);
  break;

 case 132:
  ctrl->vfeGammaLutSel.ch0BankSelect ^= 1;
  ctrl->vfeGammaLutSel.ch2BankSelect ^= 1;
  vfe_write_gamma_table(0, ctrl->vfeGammaLutSel.ch0BankSelect,
   in->table);
  vfe_write_gamma_table(2, ctrl->vfeGammaLutSel.ch2BankSelect,
   in->table);
  break;

 case 130:
  ctrl->vfeGammaLutSel.ch1BankSelect ^= 1;
  ctrl->vfeGammaLutSel.ch2BankSelect ^= 1;
  vfe_write_gamma_table(1, ctrl->vfeGammaLutSel.ch1BankSelect,
   in->table);
  vfe_write_gamma_table(2, ctrl->vfeGammaLutSel.ch2BankSelect,
   in->table);
  break;

 case 134:
  ctrl->vfeGammaLutSel.ch0BankSelect ^= 1;
  ctrl->vfeGammaLutSel.ch1BankSelect ^= 1;
  ctrl->vfeGammaLutSel.ch2BankSelect ^= 1;
  vfe_write_gamma_table(0, ctrl->vfeGammaLutSel.ch0BankSelect,
   in->table);
  vfe_write_gamma_table(1, ctrl->vfeGammaLutSel.ch1BankSelect,
   in->table);
  vfe_write_gamma_table(2, ctrl->vfeGammaLutSel.ch2BankSelect,
   in->table);
  break;

 default:
  return -EINVAL;
 }


 vfe_program_lut_bank_sel(&ctrl->vfeGammaLutSel);

 return rc;
}
