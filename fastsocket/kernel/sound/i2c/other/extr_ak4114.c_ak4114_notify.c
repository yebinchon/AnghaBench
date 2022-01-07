
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ak4114 {TYPE_1__** kctls; int card; } ;
struct TYPE_2__ {int id; } ;


 unsigned char AK4114_AUDION ;
 unsigned char AK4114_AUTO ;
 unsigned char AK4114_CCRC ;
 unsigned char AK4114_CINT ;
 unsigned char AK4114_DTSCD ;
 unsigned char AK4114_PAR ;
 unsigned char AK4114_PEM ;
 unsigned char AK4114_QCRC ;
 unsigned char AK4114_QINT ;
 unsigned char AK4114_UNLCK ;
 unsigned char AK4114_V ;
 int SNDRV_CTL_EVENT_MASK_VALUE ;
 int snd_ctl_notify (int ,int ,int *) ;

__attribute__((used)) static void ak4114_notify(struct ak4114 *ak4114,
     unsigned char rcs0, unsigned char rcs1,
     unsigned char c0, unsigned char c1)
{
 if (!ak4114->kctls[0])
  return;

 if (rcs0 & AK4114_PAR)
  snd_ctl_notify(ak4114->card, SNDRV_CTL_EVENT_MASK_VALUE,
          &ak4114->kctls[0]->id);
 if (rcs0 & AK4114_V)
  snd_ctl_notify(ak4114->card, SNDRV_CTL_EVENT_MASK_VALUE,
          &ak4114->kctls[1]->id);
 if (rcs1 & AK4114_CCRC)
  snd_ctl_notify(ak4114->card, SNDRV_CTL_EVENT_MASK_VALUE,
          &ak4114->kctls[2]->id);
 if (rcs1 & AK4114_QCRC)
  snd_ctl_notify(ak4114->card, SNDRV_CTL_EVENT_MASK_VALUE,
          &ak4114->kctls[3]->id);


 if (c1 & 0xf0)
  snd_ctl_notify(ak4114->card, SNDRV_CTL_EVENT_MASK_VALUE,
          &ak4114->kctls[4]->id);

 if ((c0 & AK4114_PEM) | (c0 & AK4114_CINT))
  snd_ctl_notify(ak4114->card, SNDRV_CTL_EVENT_MASK_VALUE,
          &ak4114->kctls[9]->id);
 if (c0 & AK4114_QINT)
  snd_ctl_notify(ak4114->card, SNDRV_CTL_EVENT_MASK_VALUE,
          &ak4114->kctls[10]->id);

 if (c0 & AK4114_AUDION)
  snd_ctl_notify(ak4114->card, SNDRV_CTL_EVENT_MASK_VALUE,
          &ak4114->kctls[11]->id);
 if (c0 & AK4114_AUTO)
  snd_ctl_notify(ak4114->card, SNDRV_CTL_EVENT_MASK_VALUE,
          &ak4114->kctls[12]->id);
 if (c0 & AK4114_DTSCD)
  snd_ctl_notify(ak4114->card, SNDRV_CTL_EVENT_MASK_VALUE,
          &ak4114->kctls[13]->id);
 if (c0 & AK4114_UNLCK)
  snd_ctl_notify(ak4114->card, SNDRV_CTL_EVENT_MASK_VALUE,
          &ak4114->kctls[14]->id);
}
