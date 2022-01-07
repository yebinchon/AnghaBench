
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vfe_cmd_rgb_gamma_config {int channelSelect; int table; int enable; } ;
struct TYPE_3__ {int rgbLUTEnable; } ;
struct TYPE_4__ {TYPE_1__ vfeModuleEnableLocal; } ;


 int EINVAL ;







 TYPE_2__* ctrl ;
 int vfe_write_gamma_table (int,int ,int ) ;

int vfe_rgb_gamma_config(struct vfe_cmd_rgb_gamma_config *in)
{
 int rc = 0;

 ctrl->vfeModuleEnableLocal.rgbLUTEnable = in->enable;

 switch (in->channelSelect) {
 case 131:
vfe_write_gamma_table(0, 0, in->table);
break;

 case 129:
  vfe_write_gamma_table(1, 0, in->table);
  break;

 case 128:
  vfe_write_gamma_table(2, 0, in->table);
  break;

 case 133:
  vfe_write_gamma_table(0, 0, in->table);
  vfe_write_gamma_table(1, 0, in->table);
  break;

 case 132:
  vfe_write_gamma_table(0, 0, in->table);
  vfe_write_gamma_table(2, 0, in->table);
  break;

 case 130:
  vfe_write_gamma_table(1, 0, in->table);
  vfe_write_gamma_table(2, 0, in->table);
  break;

 case 134:
  vfe_write_gamma_table(0, 0, in->table);
  vfe_write_gamma_table(1, 0, in->table);
  vfe_write_gamma_table(2, 0, in->table);
  break;

 default:
  rc = -EINVAL;
  break;
 }

 return rc;
}
