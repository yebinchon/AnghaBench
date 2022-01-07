
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int open_mode; } ;
typedef TYPE_1__ ad1848_port_info ;
struct TYPE_8__ {int audio_mode; int lock; } ;
typedef TYPE_2__ ad1848_info ;
struct TYPE_9__ {scalar_t__ portc; scalar_t__ devc; } ;


 int OPEN_READ ;
 int OPEN_WRITE ;
 int PCM_ENABLE_INPUT ;
 int PCM_ENABLE_OUTPUT ;
 unsigned char ad_read (TYPE_2__*,int) ;
 int ad_unmute (TYPE_2__*) ;
 int ad_write (TYPE_2__*,int,unsigned char) ;
 TYPE_3__** audio_devs ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ad1848_trigger(int dev, int state)
{
 ad1848_info *devc = (ad1848_info *) audio_devs[dev]->devc;
 ad1848_port_info *portc = (ad1848_port_info *) audio_devs[dev]->portc;
 unsigned long flags;
 unsigned char tmp, old;

 spin_lock_irqsave(&devc->lock,flags);
 state &= devc->audio_mode;

 tmp = old = ad_read(devc, 9);

 if (portc->open_mode & OPEN_READ)
 {
    if (state & PCM_ENABLE_INPUT)
     tmp |= 0x02;
    else
     tmp &= ~0x02;
 }
 if (portc->open_mode & OPEN_WRITE)
 {
  if (state & PCM_ENABLE_OUTPUT)
   tmp |= 0x01;
  else
   tmp &= ~0x01;
 }

 if (tmp != old)
 {
    ad_write(devc, 9, tmp);
    ad_unmute(devc);
 }
 spin_unlock_irqrestore(&devc->lock,flags);
}
