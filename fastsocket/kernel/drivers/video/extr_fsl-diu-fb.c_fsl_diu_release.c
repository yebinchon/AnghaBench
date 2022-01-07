
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mfb_info {scalar_t__ count; int index; } ;
struct fb_info {struct mfb_info* par; } ;


 int diu_lock ;
 int fsl_diu_disable_panel (struct fb_info*) ;
 int pr_debug (char*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int fsl_diu_release(struct fb_info *info, int user)
{
 struct mfb_info *mfbi = info->par;
 int res = 0;

 spin_lock(&diu_lock);
 mfbi->count--;
 if (mfbi->count == 0) {
  pr_debug("release plane index %d\n", mfbi->index);
  res = fsl_diu_disable_panel(info);
  if (res < 0)
   mfbi->count++;
 }
 spin_unlock(&diu_lock);
 return res;
}
