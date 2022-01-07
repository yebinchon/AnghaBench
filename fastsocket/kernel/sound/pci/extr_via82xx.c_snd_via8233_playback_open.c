
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct viadev {int reg_offset; } ;
struct via82xx {size_t playback_devno; TYPE_2__** dxs_controls; int card; scalar_t__** playback_volume; struct viadev* devs; } ;
struct snd_pcm_substream {size_t number; } ;
struct TYPE_4__ {int id; TYPE_1__* vd; } ;
struct TYPE_3__ {int access; } ;


 int SNDRV_CTL_ELEM_ACCESS_INACTIVE ;
 int SNDRV_CTL_EVENT_MASK_INFO ;
 int SNDRV_CTL_EVENT_MASK_VALUE ;
 int snd_ctl_notify (int ,int,int *) ;
 struct via82xx* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int snd_via82xx_pcm_open (struct via82xx*,struct viadev*,struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_via8233_playback_open(struct snd_pcm_substream *substream)
{
 struct via82xx *chip = snd_pcm_substream_chip(substream);
 struct viadev *viadev;
 unsigned int stream;
 int err;

 viadev = &chip->devs[chip->playback_devno + substream->number];
 if ((err = snd_via82xx_pcm_open(chip, viadev, substream)) < 0)
  return err;
 stream = viadev->reg_offset / 0x10;
 if (chip->dxs_controls[stream]) {
  chip->playback_volume[stream][0] = 0;
  chip->playback_volume[stream][1] = 0;
  chip->dxs_controls[stream]->vd[0].access &=
   ~SNDRV_CTL_ELEM_ACCESS_INACTIVE;
  snd_ctl_notify(chip->card, SNDRV_CTL_EVENT_MASK_VALUE |
          SNDRV_CTL_EVENT_MASK_INFO,
          &chip->dxs_controls[stream]->id);
 }
 return 0;
}
