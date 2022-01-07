
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvidia_par {int pci_dev; } ;
struct fb_info {int* bl_curve; } ;


 int LEVEL_STEP ;
 int MAX_LEVEL ;
 int MIN_LEVEL ;
 struct fb_info* pci_get_drvdata (int ) ;

__attribute__((used)) static int nvidia_bl_get_level_brightness(struct nvidia_par *par,
  int level)
{
 struct fb_info *info = pci_get_drvdata(par->pci_dev);
 int nlevel;



 nlevel = MIN_LEVEL + info->bl_curve[level] * LEVEL_STEP;

 if (nlevel < 0)
  nlevel = 0;
 else if (nlevel < MIN_LEVEL)
  nlevel = MIN_LEVEL;
 else if (nlevel > MAX_LEVEL)
  nlevel = MAX_LEVEL;

 return nlevel;
}
