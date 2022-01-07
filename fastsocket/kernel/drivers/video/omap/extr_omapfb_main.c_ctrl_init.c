
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int region_cnt; TYPE_2__* region; } ;
struct omapfb_platform_data {TYPE_3__ mem_desc; } ;
struct omapfb_device {TYPE_3__ mem_desc; TYPE_4__* dev; TYPE_1__* ctrl; struct lcd_panel* panel; } ;
struct lcd_panel {int bpp; } ;
struct TYPE_9__ {struct omapfb_platform_data* platform_data; } ;
struct TYPE_7__ {void* size; int vaddr; int paddr; } ;
struct TYPE_6__ {int (* init ) (struct omapfb_device*,int ,TYPE_3__*) ;} ;


 void* PAGE_ALIGN (int) ;
 int* def_vram ;
 int def_vram_cnt ;
 int def_vxres ;
 int def_vyres ;
 int dev_dbg (TYPE_4__*,char*,int,int ,int ,void*) ;
 int dev_err (TYPE_4__*,char*,int) ;
 int stub1 (struct omapfb_device*,int ,TYPE_3__*) ;

__attribute__((used)) static int ctrl_init(struct omapfb_device *fbdev)
{
 int r;
 int i;


 if (def_vram_cnt) {
  for (i = 0; i < def_vram_cnt; i++)
   fbdev->mem_desc.region[i].size =
    PAGE_ALIGN(def_vram[i]);
  fbdev->mem_desc.region_cnt = i;
 } else {
  struct omapfb_platform_data *conf;

  conf = fbdev->dev->platform_data;
  fbdev->mem_desc = conf->mem_desc;
 }

 if (!fbdev->mem_desc.region_cnt) {
  struct lcd_panel *panel = fbdev->panel;
  int def_size;
  int bpp = panel->bpp;


  if (bpp == 12)
   bpp = 16;
  def_size = def_vxres * def_vyres * bpp / 8;
  fbdev->mem_desc.region_cnt = 1;
  fbdev->mem_desc.region[0].size = PAGE_ALIGN(def_size);
 }
 r = fbdev->ctrl->init(fbdev, 0, &fbdev->mem_desc);
 if (r < 0) {
  dev_err(fbdev->dev, "controller initialization failed (%d)\n",
   r);
  return r;
 }
 return 0;
}
