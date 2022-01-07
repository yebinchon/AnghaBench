
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hda_codec {scalar_t__ beep_mode; int addr; struct hda_beep* beep; TYPE_2__* bus; } ;
struct hda_beep {int nid; scalar_t__ mode; int mutex; int beep_work; int unregister_work; int register_work; struct hda_codec* codec; int phys; } ;
struct TYPE_4__ {TYPE_1__* card; } ;
struct TYPE_3__ {int number; } ;


 int AC_VERB_SET_DIGI_CONVERT_2 ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ HDA_BEEP_MODE_OFF ;
 scalar_t__ HDA_BEEP_MODE_ON ;
 int INIT_DELAYED_WORK (int *,int *) ;
 int INIT_WORK (int *,int *) ;
 int kfree (struct hda_beep*) ;
 struct hda_beep* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int snd_hda_codec_write_cache (struct hda_codec*,int,int ,int ,int) ;
 int snd_hda_do_attach (struct hda_beep*) ;
 int snd_hda_do_register ;
 int snd_hda_do_unregister ;
 int snd_hda_generate_beep ;
 int snd_hda_get_bool_hint (struct hda_codec*,char*) ;
 int snprintf (int ,int,char*,int,int) ;

int snd_hda_attach_beep_device(struct hda_codec *codec, int nid)
{
 struct hda_beep *beep;

 if (!snd_hda_get_bool_hint(codec, "beep"))
  return 0;
 if (codec->beep_mode == HDA_BEEP_MODE_OFF)
  return 0;

 beep = kzalloc(sizeof(*beep), GFP_KERNEL);
 if (beep == ((void*)0))
  return -ENOMEM;
 snprintf(beep->phys, sizeof(beep->phys),
  "card%d/codec#%d/beep0", codec->bus->card->number, codec->addr);

 snd_hda_codec_write_cache(codec, nid, 0,
  AC_VERB_SET_DIGI_CONVERT_2, 0x01);

 beep->nid = nid;
 beep->codec = codec;
 beep->mode = codec->beep_mode;
 codec->beep = beep;

 INIT_WORK(&beep->register_work, &snd_hda_do_register);
 INIT_DELAYED_WORK(&beep->unregister_work, &snd_hda_do_unregister);
 INIT_WORK(&beep->beep_work, &snd_hda_generate_beep);
 mutex_init(&beep->mutex);

 if (beep->mode == HDA_BEEP_MODE_ON) {
  int err = snd_hda_do_attach(beep);
  if (err < 0) {
   kfree(beep);
   codec->beep = ((void*)0);
   return err;
  }
 }

 return 0;
}
