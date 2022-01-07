
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct omapfb_device {int * fb_info; } ;


 int FB_BLANK_UNBLANK ;
 int omapfb_blank (int ,int ) ;
 struct omapfb_device* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int omapfb_resume(struct platform_device *pdev)
{
 struct omapfb_device *fbdev = platform_get_drvdata(pdev);

 if (fbdev != ((void*)0))
  omapfb_blank(FB_BLANK_UNBLANK, fbdev->fb_info[0]);
 return 0;
}
