
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_mixer_oss {struct snd_card* card; } ;
struct TYPE_2__ {int numid; } ;
struct snd_kcontrol {int (* info ) (struct snd_kcontrol*,struct snd_ctl_elem_info*) ;TYPE_1__ id; } ;
struct snd_ctl_elem_info {scalar_t__ count; } ;
struct snd_card {int controls_rwsem; } ;
struct slot {scalar_t__ channels; int present; int * numid; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int down_read (int *) ;
 int kfree (struct snd_ctl_elem_info*) ;
 struct snd_ctl_elem_info* kmalloc (int,int ) ;
 struct snd_kcontrol* snd_mixer_oss_test_id (struct snd_mixer_oss*,char const*,int) ;
 int stub1 (struct snd_kcontrol*,struct snd_ctl_elem_info*) ;
 int up_read (int *) ;

__attribute__((used)) static int snd_mixer_oss_build_test(struct snd_mixer_oss *mixer, struct slot *slot, const char *name, int index, int item)
{
 struct snd_ctl_elem_info *info;
 struct snd_kcontrol *kcontrol;
 struct snd_card *card = mixer->card;
 int err;

 down_read(&card->controls_rwsem);
 kcontrol = snd_mixer_oss_test_id(mixer, name, index);
 if (kcontrol == ((void*)0)) {
  up_read(&card->controls_rwsem);
  return 0;
 }
 info = kmalloc(sizeof(*info), GFP_KERNEL);
 if (! info) {
  up_read(&card->controls_rwsem);
  return -ENOMEM;
 }
 if ((err = kcontrol->info(kcontrol, info)) < 0) {
  up_read(&card->controls_rwsem);
  kfree(info);
  return err;
 }
 slot->numid[item] = kcontrol->id.numid;
 up_read(&card->controls_rwsem);
 if (info->count > slot->channels)
  slot->channels = info->count;
 slot->present |= 1 << item;
 kfree(info);
 return 0;
}
