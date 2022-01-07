
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int speed; } ;
struct TYPE_7__ {int speed; } ;
struct TYPE_5__ {int max_dsp_speed; } ;
struct TYPE_8__ {scalar_t__ minDev; TYPE_2__ soft; TYPE_3__ dsp; TYPE_1__ mach; } ;


 scalar_t__ SND_DEV_DSP ;
 TYPE_4__ dmasound ;

__attribute__((used)) static int sound_set_speed(int speed)
{
 if (speed < 0)
  return dmasound.soft.speed;






 if (dmasound.mach.max_dsp_speed &&
    (speed > dmasound.mach.max_dsp_speed))
  speed = dmasound.mach.max_dsp_speed ;

 dmasound.soft.speed = speed;

 if (dmasound.minDev == SND_DEV_DSP)
  dmasound.dsp.speed = dmasound.soft.speed;

 return dmasound.soft.speed;
}
