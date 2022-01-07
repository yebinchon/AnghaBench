
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int nr_voice; TYPE_1__* voc; } ;
struct TYPE_3__ {int bender_range; int volume; int panning; } ;






 int bend_pitch (int,int,int) ;
 TYPE_2__* devc ;

__attribute__((used)) static void opl3_controller (int dev, int voice, int ctrl_num, int value)
{
 if (voice < 0 || voice >= devc->nr_voice)
  return;

 switch (ctrl_num)
 {
  case 129:
   bend_pitch(dev, voice, value);
   break;

  case 128:
   devc->voc[voice].bender_range = value;
   break;

  case 131:
   devc->voc[voice].volume = value / 128;
   break;

  case 130:
   devc->voc[voice].panning = (value * 2) - 128;
   break;
 }
}
