
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mfb_info {int index; struct diu_ad* ad; int count; struct fsl_diu_data* parent; } ;
struct fsl_diu_data {TYPE_2__* dummy_ad; TYPE_1__** fsl_diu_info; } ;
struct fb_info {struct mfb_info* par; } ;
struct diu_ad {int next_ad; int paddr; } ;
struct diu {int * desc; } ;
struct TYPE_6__ {struct diu* diu_reg; } ;
struct TYPE_5__ {int paddr; } ;
struct TYPE_4__ {struct mfb_info* par; } ;


 int EINVAL ;
 TYPE_3__ dr ;
 int out_be32 (int *,int ) ;

__attribute__((used)) static int fsl_diu_disable_panel(struct fb_info *info)
{
 struct mfb_info *pmfbi, *cmfbi, *mfbi = info->par;
 struct diu *hw = dr.diu_reg;
 struct diu_ad *ad = mfbi->ad;
 struct fsl_diu_data *machine_data = mfbi->parent;
 int res = 0;

 switch (mfbi->index) {
 case 0:
  if (hw->desc[0] != machine_data->dummy_ad->paddr)
   out_be32(&hw->desc[0],
    machine_data->dummy_ad->paddr);
  break;
 case 1:
  cmfbi = machine_data->fsl_diu_info[2]->par;
  if (cmfbi->count > 0)
   out_be32(&hw->desc[1], cmfbi->ad->paddr);

  else
   out_be32(&hw->desc[1],
    machine_data->dummy_ad->paddr);

  break;
 case 3:
  cmfbi = machine_data->fsl_diu_info[4]->par;
  if (cmfbi->count > 0)
   out_be32(&hw->desc[2], cmfbi->ad->paddr);

  else
   out_be32(&hw->desc[2],
    machine_data->dummy_ad->paddr);

  break;
 case 2:
  pmfbi = machine_data->fsl_diu_info[1]->par;
  if (hw->desc[1] != ad->paddr) {

   if (pmfbi->count > 0)

    pmfbi->ad->next_ad = 0;
  } else
   out_be32(&hw->desc[1], machine_data->dummy_ad->paddr);

  break;
 case 4:
  pmfbi = machine_data->fsl_diu_info[3]->par;
  if (hw->desc[2] != ad->paddr) {

   if (pmfbi->count > 0)

    pmfbi->ad->next_ad = 0;
  } else
   out_be32(&hw->desc[2], machine_data->dummy_ad->paddr);

  break;
 default:
  res = -EINVAL;
  break;
 }

 return res;
}
