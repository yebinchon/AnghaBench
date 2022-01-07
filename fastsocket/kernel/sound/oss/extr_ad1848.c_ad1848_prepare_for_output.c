
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int speed_bits; int format_bits; int channels; int speed; } ;
typedef TYPE_1__ ad1848_port_info ;
struct TYPE_10__ {scalar_t__ model; scalar_t__ timer_running; scalar_t__ xfer_count; int lock; int base; } ;
typedef TYPE_2__ ad1848_info ;
struct TYPE_11__ {scalar_t__ portc; scalar_t__ devc; } ;


 scalar_t__ MD_1845 ;
 scalar_t__ MD_1845_SSCAPE ;
 scalar_t__ MD_4232 ;
 scalar_t__ MD_4236 ;
 scalar_t__ MD_IWAVE ;
 int ad1848_halt_output (int) ;
 int ad1848_tmr_reprogram (int) ;
 int ad_enter_MCE (TYPE_2__*) ;
 int ad_leave_MCE (TYPE_2__*) ;
 int ad_mute (TYPE_2__*) ;
 unsigned char ad_read (TYPE_2__*,int) ;
 int ad_write (TYPE_2__*,int,unsigned char) ;
 TYPE_3__** audio_devs ;
 int inb (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int timer_installed ;

__attribute__((used)) static int ad1848_prepare_for_output(int dev, int bsize, int bcount)
{
 int timeout;
 unsigned char fs, old_fs, tmp = 0;
 unsigned long flags;
 ad1848_info *devc = (ad1848_info *) audio_devs[dev]->devc;
 ad1848_port_info *portc = (ad1848_port_info *) audio_devs[dev]->portc;

 ad_mute(devc);

 spin_lock_irqsave(&devc->lock,flags);
 fs = portc->speed_bits | (portc->format_bits << 5);

 if (portc->channels > 1)
  fs |= 0x10;

 ad_enter_MCE(devc);

 if (devc->model == MD_1845 || devc->model == MD_1845_SSCAPE)
 {
  fs &= 0xf0;

  ad_write(devc, 22, (portc->speed >> 8) & 0xff);
  ad_write(devc, 23, portc->speed & 0xff);
 }
 old_fs = ad_read(devc, 8);

 if (devc->model == MD_4232 || devc->model >= MD_4236)
 {
  tmp = ad_read(devc, 16);
  ad_write(devc, 16, tmp | 0x30);
 }
 if (devc->model == MD_IWAVE)
  ad_write(devc, 17, 0xc2);

 ad_write(devc, 8, fs);





 timeout = 0;
 while (timeout < 100 && inb(devc->base) != 0x80)
  timeout++;
 timeout = 0;
 while (timeout < 10000 && inb(devc->base) == 0x80)
  timeout++;

 if (devc->model >= MD_4232)
  ad_write(devc, 16, tmp & ~0x30);

 ad_leave_MCE(devc);


 spin_unlock_irqrestore(&devc->lock,flags);
 devc->xfer_count = 0;


 if (dev == timer_installed && devc->timer_running)
  if ((fs & 0x01) != (old_fs & 0x01))
  {
   ad1848_tmr_reprogram(dev);
  }

 ad1848_halt_output(dev);
 return 0;
}
