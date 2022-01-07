
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct hda_jack_tbl {int phantom_jack; int type; TYPE_2__* jack; struct snd_kcontrol* kctl; } ;
struct hda_codec {TYPE_1__* bus; } ;
typedef int hda_nid_t ;
struct TYPE_5__ {int private_free; struct hda_jack_tbl* private_data; } ;
struct TYPE_4__ {int card; } ;


 int ENOMEM ;
 int get_input_jack_type (struct hda_codec*,int ) ;
 int hda_free_jack_priv ;
 int snd_hda_ctl_add (struct hda_codec*,int ,struct snd_kcontrol*) ;
 int snd_hda_jack_detect (struct hda_codec*,int ) ;
 struct hda_jack_tbl* snd_hda_jack_tbl_new (struct hda_codec*,int ) ;
 int snd_jack_new (int ,char const*,int ,TYPE_2__**) ;
 int snd_jack_report (TYPE_2__*,int ) ;
 struct snd_kcontrol* snd_kctl_jack_new (char const*,int,struct hda_codec*) ;
 int snd_kctl_jack_report (int ,struct snd_kcontrol*,int) ;

__attribute__((used)) static int __snd_hda_jack_add_kctl(struct hda_codec *codec, hda_nid_t nid,
     const char *name, int idx, bool phantom_jack)
{
 struct hda_jack_tbl *jack;
 struct snd_kcontrol *kctl;
 int err, state;

 jack = snd_hda_jack_tbl_new(codec, nid);
 if (!jack)
  return 0;
 if (jack->kctl)
  return 0;
 kctl = snd_kctl_jack_new(name, idx, codec);
 if (!kctl)
  return -ENOMEM;
 err = snd_hda_ctl_add(codec, nid, kctl);
 if (err < 0)
  return err;
 jack->kctl = kctl;
 jack->phantom_jack = !!phantom_jack;

 state = snd_hda_jack_detect(codec, nid);
 snd_kctl_jack_report(codec->bus->card, kctl, state);
 return 0;
}
