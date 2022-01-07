
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int snd_kctl_ioctl_func_t ;


 int _snd_ctl_unregister_ioctl (int ,int *) ;
 int snd_control_ioctls ;

int snd_ctl_unregister_ioctl(snd_kctl_ioctl_func_t fcn)
{
 return _snd_ctl_unregister_ioctl(fcn, &snd_control_ioctls);
}
