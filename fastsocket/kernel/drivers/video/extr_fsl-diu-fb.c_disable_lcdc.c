
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mfb_info {struct fsl_diu_data* parent; } ;
struct fsl_diu_data {scalar_t__ fb_enabled; } ;
struct fb_info {struct mfb_info* par; } ;
struct diu {int diu_mode; } ;
struct TYPE_2__ {struct diu* diu_reg; } ;


 TYPE_1__ dr ;
 int out_be32 (int *,int ) ;

__attribute__((used)) static void disable_lcdc(struct fb_info *info)
{
 struct diu *hw = dr.diu_reg;
 struct mfb_info *mfbi = info->par;
 struct fsl_diu_data *machine_data = mfbi->parent;

 if (machine_data->fb_enabled) {
  out_be32(&hw->diu_mode, 0);
  machine_data->fb_enabled = 0;
 }
}
