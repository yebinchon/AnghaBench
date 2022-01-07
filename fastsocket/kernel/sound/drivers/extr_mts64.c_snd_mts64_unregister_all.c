
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SNDRV_CARDS ;
 int mts64_parport_driver ;
 int parport_unregister_driver (int *) ;
 int platform_device_unregister (int *) ;
 int ** platform_devices ;
 int platform_driver_unregister (int *) ;
 int snd_mts64_driver ;

__attribute__((used)) static void snd_mts64_unregister_all(void)
{
 int i;

 for (i = 0; i < SNDRV_CARDS; ++i) {
  if (platform_devices[i]) {
   platform_device_unregister(platform_devices[i]);
   platform_devices[i] = ((void*)0);
  }
 }
 platform_driver_unregister(&snd_mts64_driver);
 parport_unregister_driver(&mts64_parport_driver);
}
