
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mfb_info {int pseudo_palette; } ;
struct TYPE_2__ {int activate; } ;
struct fb_info {int cmap; int * pseudo_palette; int flags; int * fbops; TYPE_1__ var; int * device; struct mfb_info* par; } ;


 int FBINFO_FLAG_DEFAULT ;
 int FB_ACTIVATE_NOW ;
 int fb_alloc_cmap (int *,int,int ) ;
 int fsl_diu_ops ;

__attribute__((used)) static int init_fbinfo(struct fb_info *info)
{
 struct mfb_info *mfbi = info->par;

 info->device = ((void*)0);
 info->var.activate = FB_ACTIVATE_NOW;
 info->fbops = &fsl_diu_ops;
 info->flags = FBINFO_FLAG_DEFAULT;
 info->pseudo_palette = &mfbi->pseudo_palette;


 fb_alloc_cmap(&info->cmap, 16, 0);
 return 0;
}
