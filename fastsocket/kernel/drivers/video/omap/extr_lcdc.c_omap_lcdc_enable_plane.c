
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int ext_mode; int update_mode; TYPE_1__* fbdev; } ;
struct TYPE_3__ {int dev; } ;


 int EINVAL ;
 int OMAPFB_PLANE_GFX ;
 int dev_dbg (int ,char*,int,int,int ,int ) ;
 TYPE_2__ lcdc ;

__attribute__((used)) static int omap_lcdc_enable_plane(int plane, int enable)
{
 dev_dbg(lcdc.fbdev->dev,
  "plane %d enable %d update_mode %d ext_mode %d\n",
  plane, enable, lcdc.update_mode, lcdc.ext_mode);
 if (plane != OMAPFB_PLANE_GFX)
  return -EINVAL;

 return 0;
}
