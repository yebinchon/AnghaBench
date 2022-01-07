
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio_pdrv_genirq_platdata {int uioinfo; } ;
struct platform_device {int dev; } ;


 int kfree (struct uio_pdrv_genirq_platdata*) ;
 struct uio_pdrv_genirq_platdata* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int uio_unregister_device (int ) ;

__attribute__((used)) static int uio_pdrv_genirq_remove(struct platform_device *pdev)
{
 struct uio_pdrv_genirq_platdata *priv = platform_get_drvdata(pdev);

 uio_unregister_device(priv->uioinfo);
 pm_runtime_disable(&pdev->dev);
 kfree(priv);
 return 0;
}
