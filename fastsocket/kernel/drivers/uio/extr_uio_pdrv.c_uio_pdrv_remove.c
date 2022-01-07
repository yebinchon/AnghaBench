
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio_platdata {int uioinfo; } ;
struct platform_device {int dummy; } ;


 int kfree (struct uio_platdata*) ;
 struct uio_platdata* platform_get_drvdata (struct platform_device*) ;
 int uio_unregister_device (int ) ;

__attribute__((used)) static int uio_pdrv_remove(struct platform_device *pdev)
{
 struct uio_platdata *pdata = platform_get_drvdata(pdev);

 uio_unregister_device(pdata->uioinfo);

 kfree(pdata);

 return 0;
}
