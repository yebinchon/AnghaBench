
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hdspm {TYPE_2__* mixer; } ;
struct TYPE_4__ {TYPE_1__* ch; } ;
struct TYPE_3__ {int* pb; } ;


 unsigned int HDSPM_MIXER_CHANNELS ;

__attribute__((used)) static inline int hdspm_read_pb_gain(struct hdspm * hdspm, unsigned int chan,
         unsigned int pb)
{
 if (chan >= HDSPM_MIXER_CHANNELS || pb >= HDSPM_MIXER_CHANNELS)
  return 0;
 return hdspm->mixer->ch[chan].pb[pb];
}
