
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct omapfb_device {int state; } ;
typedef enum omapfb_state { ____Placeholder_omapfb_state } omapfb_state ;


 int OMAPFB_DISABLED ;
 int omapfb_free_resources (struct omapfb_device*,int) ;
 struct omapfb_device* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int omapfb_remove(struct platform_device *pdev)
{
 struct omapfb_device *fbdev = platform_get_drvdata(pdev);
 enum omapfb_state saved_state = fbdev->state;



 fbdev->state = OMAPFB_DISABLED;
 omapfb_free_resources(fbdev, saved_state);

 return 0;
}
