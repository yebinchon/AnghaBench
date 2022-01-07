
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int open_mode; } ;
typedef TYPE_1__ wavnc_port_info ;
struct TYPE_5__ {int open_mode; int record_dev; int playback_dev; scalar_t__ audio_mode; } ;
typedef TYPE_2__ wavnc_info ;
struct TYPE_6__ {scalar_t__ portc; scalar_t__ devc; } ;


 int EBUSY ;
 int ENXIO ;
 int OPEN_READ ;
 int OPEN_WRITE ;
 TYPE_3__** audio_devs ;
 int num_audiodevs ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int waveartist_lock ;
 int waveartist_trigger (int,int ) ;

__attribute__((used)) static int
waveartist_open(int dev, int mode)
{
 wavnc_info *devc;
 wavnc_port_info *portc;
 unsigned long flags;

 if (dev < 0 || dev >= num_audiodevs)
  return -ENXIO;

 devc = (wavnc_info *) audio_devs[dev]->devc;
 portc = (wavnc_port_info *) audio_devs[dev]->portc;

 spin_lock_irqsave(&waveartist_lock, flags);
 if (portc->open_mode || (devc->open_mode & mode)) {
  spin_unlock_irqrestore(&waveartist_lock, flags);
  return -EBUSY;
 }

 devc->audio_mode = 0;
 devc->open_mode |= mode;
 portc->open_mode = mode;
 waveartist_trigger(dev, 0);

 if (mode & OPEN_READ)
  devc->record_dev = dev;
 if (mode & OPEN_WRITE)
  devc->playback_dev = dev;
 spin_unlock_irqrestore(&waveartist_lock, flags);

 return 0;
}
