
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int ioctl_compat; int ioctl; int open; } ;
struct snd_hwdep {char* name; int exclusive; TYPE_2__ ops; int private_free; struct hda_codec* private_data; int iface; } ;
struct hda_verb {int dummy; } ;
struct hda_pincfg {int dummy; } ;
struct hda_hint {int dummy; } ;
struct hda_codec {int addr; int user_pins; int hints; int init_verbs; int user_mutex; struct snd_hwdep* hwdep; TYPE_1__* bus; } ;
struct TYPE_3__ {int card; } ;


 int SNDRV_HWDEP_IFACE_HDA ;
 int hda_hwdep_ioctl ;
 int hda_hwdep_ioctl_compat ;
 int hda_hwdep_open ;
 int hwdep_free ;
 int mutex_init (int *) ;
 int snd_array_init (int *,int,int) ;
 int snd_hwdep_new (int ,char*,int,struct snd_hwdep**) ;
 int sprintf (char*,char*,int) ;

int snd_hda_create_hwdep(struct hda_codec *codec)
{
 char hwname[16];
 struct snd_hwdep *hwdep;
 int err;

 sprintf(hwname, "HDA Codec %d", codec->addr);
 err = snd_hwdep_new(codec->bus->card, hwname, codec->addr, &hwdep);
 if (err < 0)
  return err;
 codec->hwdep = hwdep;
 sprintf(hwdep->name, "HDA Codec %d", codec->addr);
 hwdep->iface = SNDRV_HWDEP_IFACE_HDA;
 hwdep->private_data = codec;
 hwdep->private_free = hwdep_free;
 hwdep->exclusive = 1;

 hwdep->ops.open = hda_hwdep_open;
 hwdep->ops.ioctl = hda_hwdep_ioctl;




 mutex_init(&codec->user_mutex);
 snd_array_init(&codec->init_verbs, sizeof(struct hda_verb), 32);
 snd_array_init(&codec->hints, sizeof(struct hda_hint), 32);
 snd_array_init(&codec->user_pins, sizeof(struct hda_pincfg), 16);

 return 0;
}
