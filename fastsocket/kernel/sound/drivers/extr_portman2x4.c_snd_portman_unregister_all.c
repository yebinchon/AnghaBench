
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SNDRV_CARDS ;
 int parport_unregister_driver (int *) ;
 int platform_device_unregister (int *) ;
 int ** platform_devices ;
 int platform_driver_unregister (int *) ;
 int portman_parport_driver ;
 int snd_portman_driver ;

__attribute__((used)) static void snd_portman_unregister_all(void)
{
 int i;

 for (i = 0; i < SNDRV_CARDS; ++i) {
  if (platform_devices[i]) {
   platform_device_unregister(platform_devices[i]);
   platform_devices[i] = ((void*)0);
  }
 }
 platform_driver_unregister(&snd_portman_driver);
 parport_unregister_driver(&portman_parport_driver);
}
