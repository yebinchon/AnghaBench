
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int id; } ;
struct fb_info {int cmap; } ;


 int channel_owned ;
 int fb_dealloc_cmap (int *) ;
 int framebuffer_release (struct fb_info*) ;
 struct fb_info* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;
 int pnx4008_free_dum_channel (int ,int ) ;
 int pnx4008_set_dum_exit_notification (int ) ;
 int unregister_framebuffer (struct fb_info*) ;

__attribute__((used)) static int rgbfb_remove(struct platform_device *pdev)
{
 struct fb_info *info = platform_get_drvdata(pdev);

 if (info) {
  unregister_framebuffer(info);
  fb_dealloc_cmap(&info->cmap);
  framebuffer_release(info);
  platform_set_drvdata(pdev, ((void*)0));
 }

 pnx4008_free_dum_channel(channel_owned, pdev->id);
 pnx4008_set_dum_exit_notification(pdev->id);

 return 0;
}
