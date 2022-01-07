
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_9__ {int * dev; } ;
struct TYPE_8__ {int dev; } ;


 int ENODEV ;
 int ENOMEM ;
 int dev_warn (int *,char*) ;
 int machine_is_mioa701 () ;
 TYPE_2__ mioa701_snd_devdata ;
 TYPE_1__* mioa701_snd_device ;
 int platform_device_add (TYPE_1__*) ;
 TYPE_1__* platform_device_alloc (char*,int) ;
 int platform_device_put (TYPE_1__*) ;
 int platform_set_drvdata (TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static int mioa701_wm9713_probe(struct platform_device *pdev)
{
 int ret;

 if (!machine_is_mioa701())
  return -ENODEV;

 dev_warn(&pdev->dev, "Be warned that incorrect mixers/muxes setup will"
   "lead to overheating and possible destruction of your device."
   "Do not use without a good knowledge of mio's board design!\n");

 mioa701_snd_device = platform_device_alloc("soc-audio", -1);
 if (!mioa701_snd_device)
  return -ENOMEM;

 platform_set_drvdata(mioa701_snd_device, &mioa701_snd_devdata);
 mioa701_snd_devdata.dev = &mioa701_snd_device->dev;

 ret = platform_device_add(mioa701_snd_device);
 if (!ret)
  return 0;

 platform_device_put(mioa701_snd_device);
 return ret;
}
