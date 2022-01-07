
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_sf_callback {int sample_reset; int sample_free; int sample_new; struct snd_emux* private_data; } ;
struct snd_emux_voice {int dummy; } ;
struct TYPE_2__ {scalar_t__ sample_reset; scalar_t__ sample_free; scalar_t__ sample_new; } ;
struct snd_emux {scalar_t__ max_voices; int * sflist; int memhdr; TYPE_1__ ops; int * voices; int name; struct snd_card* card; int hw; } ;
struct snd_card {int dummy; } ;
typedef int sf_cb ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int * kcalloc (scalar_t__,int,int ) ;
 int kstrdup (char*,int ) ;
 int memset (struct snd_sf_callback*,int ,int) ;
 int sf_sample_free ;
 int sf_sample_new ;
 int sf_sample_reset ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_emux_init_hwdep (struct snd_emux*) ;
 int snd_emux_init_seq (struct snd_emux*,struct snd_card*,int) ;
 int snd_emux_init_seq_oss (struct snd_emux*) ;
 int snd_emux_init_virmidi (struct snd_emux*,struct snd_card*) ;
 int snd_emux_init_voices (struct snd_emux*) ;
 int snd_emux_proc_init (struct snd_emux*,struct snd_card*,int) ;
 int * snd_sf_new (struct snd_sf_callback*,int ) ;

int snd_emux_register(struct snd_emux *emu, struct snd_card *card, int index, char *name)
{
 int err;
 struct snd_sf_callback sf_cb;

 if (snd_BUG_ON(!emu->hw || emu->max_voices <= 0))
  return -EINVAL;
 if (snd_BUG_ON(!card || !name))
  return -EINVAL;

 emu->card = card;
 emu->name = kstrdup(name, GFP_KERNEL);
 emu->voices = kcalloc(emu->max_voices, sizeof(struct snd_emux_voice),
         GFP_KERNEL);
 if (emu->voices == ((void*)0))
  return -ENOMEM;


 memset(&sf_cb, 0, sizeof(sf_cb));
 sf_cb.private_data = emu;
 if (emu->ops.sample_new)
  sf_cb.sample_new = sf_sample_new;
 if (emu->ops.sample_free)
  sf_cb.sample_free = sf_sample_free;
 if (emu->ops.sample_reset)
  sf_cb.sample_reset = sf_sample_reset;
 emu->sflist = snd_sf_new(&sf_cb, emu->memhdr);
 if (emu->sflist == ((void*)0))
  return -ENOMEM;

 if ((err = snd_emux_init_hwdep(emu)) < 0)
  return err;

 snd_emux_init_voices(emu);

 snd_emux_init_seq(emu, card, index);



 snd_emux_init_virmidi(emu, card);




 return 0;
}
