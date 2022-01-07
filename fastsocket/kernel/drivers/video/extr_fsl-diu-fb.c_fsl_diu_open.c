
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mfb_info {int count; int index; } ;
struct fb_info {int var; struct mfb_info* par; } ;


 int diu_lock ;
 int fsl_diu_check_var (int *,struct fb_info*) ;
 int fsl_diu_enable_panel (struct fb_info*) ;
 int fsl_diu_set_par (struct fb_info*) ;
 int pr_debug (char*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int fsl_diu_open(struct fb_info *info, int user)
{
 struct mfb_info *mfbi = info->par;
 int res = 0;

 spin_lock(&diu_lock);
 mfbi->count++;
 if (mfbi->count == 1) {
  pr_debug("open plane index %d\n", mfbi->index);
  fsl_diu_check_var(&info->var, info);
  res = fsl_diu_set_par(info);
  if (res < 0)
   mfbi->count--;
  else {
   res = fsl_diu_enable_panel(info);
   if (res < 0)
    mfbi->count--;
  }
 }

 spin_unlock(&diu_lock);
 return res;
}
