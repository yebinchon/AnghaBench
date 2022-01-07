
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int *) ;
 int platform_device_unregister (int ) ;
 int * platform_devices ;
 int platform_driver_unregister (int *) ;
 scalar_t__ pnp_registered ;
 int pnp_unregister_driver (int *) ;
 int snd_mpu401_driver ;
 int snd_mpu401_pnp_driver ;

__attribute__((used)) static void snd_mpu401_unregister_all(void)
{
 int i;

 if (pnp_registered)
  pnp_unregister_driver(&snd_mpu401_pnp_driver);
 for (i = 0; i < ARRAY_SIZE(platform_devices); ++i)
  platform_device_unregister(platform_devices[i]);
 platform_driver_unregister(&snd_mpu401_driver);
}
