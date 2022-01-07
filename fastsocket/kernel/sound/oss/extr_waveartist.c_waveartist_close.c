
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int open_mode; } ;
typedef TYPE_1__ wavnc_port_info ;
struct TYPE_5__ {int open_mode; scalar_t__ audio_mode; } ;
typedef TYPE_2__ wavnc_info ;
struct TYPE_6__ {scalar_t__ portc; scalar_t__ devc; } ;


 TYPE_3__** audio_devs ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int waveartist_halt (int) ;
 int waveartist_lock ;

__attribute__((used)) static void
waveartist_close(int dev)
{
 wavnc_info *devc = (wavnc_info *) audio_devs[dev]->devc;
 wavnc_port_info *portc = (wavnc_port_info *) audio_devs[dev]->portc;
 unsigned long flags;

 spin_lock_irqsave(&waveartist_lock, flags);

 waveartist_halt(dev);

 devc->audio_mode = 0;
 devc->open_mode &= ~portc->open_mode;
 portc->open_mode = 0;

 spin_unlock_irqrestore(&waveartist_lock, flags);
}
