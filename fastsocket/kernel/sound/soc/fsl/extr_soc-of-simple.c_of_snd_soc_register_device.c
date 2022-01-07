
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct of_snd_soc_device* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct TYPE_4__ {TYPE_1__* dev; int codec_data; } ;
struct of_snd_soc_device {TYPE_2__ device; int id; int platform_node; } ;


 int platform_device_add (struct platform_device*) ;
 struct platform_device* platform_device_alloc (char*,int ) ;
 int platform_set_drvdata (struct platform_device*,TYPE_2__*) ;
 int pr_err (char*) ;
 int pr_info (char*) ;

__attribute__((used)) static void of_snd_soc_register_device(struct of_snd_soc_device *of_soc)
{
 struct platform_device *pdev;
 int rc;



 if ((!of_soc->device.codec_data) || (!of_soc->platform_node))
  return;

 pr_info("platform<-->codec match achieved; registering machine\n");

 pdev = platform_device_alloc("soc-audio", of_soc->id);
 if (!pdev) {
  pr_err("of_soc: platform_device_alloc() failed\n");
  return;
 }

 pdev->dev.platform_data = of_soc;
 platform_set_drvdata(pdev, &of_soc->device);
 of_soc->device.dev = &pdev->dev;


 rc = platform_device_add(pdev);
 if (rc) {
  pr_err("of_soc: platform_device_add() failed\n");
  return;
 }

}
