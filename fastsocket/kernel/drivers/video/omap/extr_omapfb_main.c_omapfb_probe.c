
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int BUG_ON (int ) ;
 int * fbdev_panel ;
 struct platform_device* fbdev_pdev ;
 int omapfb_do_probe (struct platform_device*,int *) ;

__attribute__((used)) static int omapfb_probe(struct platform_device *pdev)
{
 BUG_ON(fbdev_pdev != ((void*)0));


 fbdev_pdev = pdev;
 if (fbdev_panel != ((void*)0))
  omapfb_do_probe(fbdev_pdev, fbdev_panel);
 return 0;
}
