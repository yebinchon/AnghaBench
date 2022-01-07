
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct channel_info {int* controllers; int bender_range; int pgm_num; } ;
struct TYPE_6__ {TYPE_1__* voc; } ;
struct TYPE_5__ {struct channel_info* chn_info; } ;
struct TYPE_4__ {int volume; int panning; int bender_range; scalar_t__ bender; } ;


 size_t CTL_MAIN_VOLUME ;
 size_t CTL_PAN ;
 TYPE_3__* devc ;
 int opl3_set_instr (int,int,int ) ;
 TYPE_2__** synth_devs ;

__attribute__((used)) static void opl3_setup_voice(int dev, int voice, int chn)
{
 struct channel_info *info =
 &synth_devs[dev]->chn_info[chn];

 opl3_set_instr(dev, voice, info->pgm_num);

 devc->voc[voice].bender = 0;
 devc->voc[voice].bender_range = info->bender_range;
 devc->voc[voice].volume = info->controllers[CTL_MAIN_VOLUME];
 devc->voc[voice].panning = (info->controllers[CTL_PAN] * 2) - 128;
}
