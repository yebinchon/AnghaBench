
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int supported_devices; int supported_rec_devices; int* mixer_reroute; int lock; int model; } ;
typedef TYPE_1__ ad1848_info ;




 int EINVAL ;
 int ENODEV ;
 int MD_1845 ;
 int MD_1845_SSCAPE ;
 int SOUND_MIXER_NONE ;
 int SOUND_MIXER_NRDEVICES ;
 int ad1848_mixer_set (TYPE_1__*,int,int ) ;
 int ad_enter_MCE (TYPE_1__*) ;
 int ad_leave_MCE (TYPE_1__*) ;
 int ad_read (TYPE_1__*,int) ;
 int ad_write (TYPE_1__*,int,int) ;
 TYPE_1__* adev_info ;
 int nr_ad1848_devs ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int ad1848_control(int cmd, int arg)
{
 ad1848_info *devc;
 unsigned long flags;

 if (nr_ad1848_devs < 1)
  return -ENODEV;

 devc = &adev_info[nr_ad1848_devs - 1];

 switch (cmd)
 {
  case 128:
   if (devc->model != MD_1845 && devc->model != MD_1845_SSCAPE)
    return -EINVAL;
   spin_lock_irqsave(&devc->lock,flags);
   ad_enter_MCE(devc);
   ad_write(devc, 29, (ad_read(devc, 29) & 0x1f) | (arg << 5));
   ad_leave_MCE(devc);
   spin_unlock_irqrestore(&devc->lock,flags);
   break;

  case 129:
  {
   int o = (arg >> 8) & 0xff;
   int n = arg & 0xff;

   if (o < 0 || o >= SOUND_MIXER_NRDEVICES)
    return -EINVAL;

   if (!(devc->supported_devices & (1 << o)) &&
       !(devc->supported_rec_devices & (1 << o)))
    return -EINVAL;

   if (n == SOUND_MIXER_NONE)
   {
    ad1848_mixer_set(devc, o, 0);
    devc->supported_devices &= ~(1 << o);
    devc->supported_rec_devices &= ~(1 << o);
    break;
   }


   if (n < 0 || n >= SOUND_MIXER_NRDEVICES)
    return -EINVAL;

   devc->mixer_reroute[n] = o;
   if (devc->supported_devices & (1 << o))
    devc->supported_devices |= (1 << n);
   if (devc->supported_rec_devices & (1 << o))
    devc->supported_rec_devices |= (1 << n);

   devc->supported_devices &= ~(1 << o);
   devc->supported_rec_devices &= ~(1 << o);
  }
  break;
 }
 return 0;
}
