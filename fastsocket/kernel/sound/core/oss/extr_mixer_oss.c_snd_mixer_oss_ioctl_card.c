
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_mixer_oss_file {int * mixer; struct snd_card* card; } ;
struct snd_card {int dummy; } ;
typedef int fmixer ;
struct TYPE_2__ {int * mixer_oss; } ;


 int ENXIO ;
 TYPE_1__* card_oss (struct snd_card*) ;
 int memset (struct snd_mixer_oss_file*,int ,int) ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_mixer_oss_ioctl1 (struct snd_mixer_oss_file*,unsigned int,unsigned long) ;

int snd_mixer_oss_ioctl_card(struct snd_card *card, unsigned int cmd, unsigned long arg)
{
 struct snd_mixer_oss_file fmixer;

 if (snd_BUG_ON(!card))
  return -ENXIO;
 if (card_oss(card)->mixer_oss == ((void*)0))
  return -ENXIO;
 memset(&fmixer, 0, sizeof(fmixer));
 fmixer.card = card;
 fmixer.mixer = card_oss(card)->mixer_oss;
 return snd_mixer_oss_ioctl1(&fmixer, cmd, arg);
}
