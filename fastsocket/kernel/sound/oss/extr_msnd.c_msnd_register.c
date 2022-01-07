
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int multisound_dev_t ;


 int ENOMEM ;
 int MSND_MAX_DEVS ;
 int ** devs ;
 int num_devs ;

int msnd_register(multisound_dev_t *dev)
{
 int i;

 for (i = 0; i < MSND_MAX_DEVS; ++i)
  if (devs[i] == ((void*)0))
   break;

 if (i == MSND_MAX_DEVS)
  return -ENOMEM;

 devs[i] = dev;
 ++num_devs;
 return 0;
}
