
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int open_mode; } ;
typedef TYPE_1__ wavnc_port_info ;
struct TYPE_5__ {scalar_t__ audio_mode; } ;
typedef TYPE_2__ wavnc_info ;
struct TYPE_6__ {scalar_t__ devc; scalar_t__ portc; } ;


 int OPEN_READ ;
 int OPEN_WRITE ;
 TYPE_3__** audio_devs ;
 int waveartist_halt_input (int) ;
 int waveartist_halt_output (int) ;

__attribute__((used)) static void
waveartist_halt(int dev)
{
 wavnc_port_info *portc = (wavnc_port_info *) audio_devs[dev]->portc;
 wavnc_info *devc;

 if (portc->open_mode & OPEN_WRITE)
  waveartist_halt_output(dev);

 if (portc->open_mode & OPEN_READ)
  waveartist_halt_input(dev);

 devc = (wavnc_info *) audio_devs[dev]->devc;
 devc->audio_mode = 0;
}
