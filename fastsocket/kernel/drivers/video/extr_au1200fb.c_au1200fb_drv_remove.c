
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_4__ {scalar_t__ len; } ;
struct TYPE_3__ {scalar_t__ pseudo_palette; TYPE_2__ cmap; } ;
struct au1200fb_device {TYPE_1__ fb_info; int fb_phys; scalar_t__ fb_mem; int fb_len; } ;


 int AU1200_LCD_INT ;
 int CONFIG_FB_AU1200_DEVS ;
 int ENODEV ;
 int PAGE_ALIGN (int ) ;
 struct au1200fb_device* _au1200fb_devices ;
 int au1200_setpanel (int *) ;
 int dma_free_noncoherent (int *,int ,scalar_t__,int ) ;
 int fb_dealloc_cmap (TYPE_2__*) ;
 int free_irq (int ,void*) ;
 int kfree (scalar_t__) ;
 int unregister_framebuffer (TYPE_1__*) ;

__attribute__((used)) static int au1200fb_drv_remove(struct platform_device *dev)
{
 struct au1200fb_device *fbdev;
 int plane;

 if (!dev)
  return -ENODEV;


 au1200_setpanel(((void*)0));

 for (plane = 0; plane < CONFIG_FB_AU1200_DEVS; ++plane)
 {
  fbdev = &_au1200fb_devices[plane];


  unregister_framebuffer(&fbdev->fb_info);
  if (fbdev->fb_mem)
   dma_free_noncoherent(&dev->dev,
     PAGE_ALIGN(fbdev->fb_len),
     fbdev->fb_mem, fbdev->fb_phys);
  if (fbdev->fb_info.cmap.len != 0)
   fb_dealloc_cmap(&fbdev->fb_info.cmap);
  if (fbdev->fb_info.pseudo_palette)
   kfree(fbdev->fb_info.pseudo_palette);
 }

 free_irq(AU1200_LCD_INT, (void *)dev);

 return 0;
}
