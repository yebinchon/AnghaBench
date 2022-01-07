
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int own_eapd_ctl; int power_down_unused; int beep_nid; } ;
struct sigmatel_spec {int default_polarity; int num_pwrs; int pwr_nids; TYPE_1__ gen; scalar_t__ linear_tone_beep; } ;
struct hda_codec {int proc_widget_hook; int patch_ops; struct sigmatel_spec* spec; scalar_t__ epss; } ;


 int ARRAY_SIZE (int ) ;
 int alloc_stac_spec (struct hda_codec*) ;
 int stac92hd95_pwr_nids ;
 int stac92hd_proc_hook ;
 int stac_free (struct hda_codec*) ;
 int stac_parse_auto_config (struct hda_codec*) ;
 int stac_patch_ops ;

__attribute__((used)) static int patch_stac92hd95(struct hda_codec *codec)
{
 struct sigmatel_spec *spec;
 int err;

 err = alloc_stac_spec(codec);
 if (err < 0)
  return err;

 codec->epss = 0;

 spec = codec->spec;
 spec->linear_tone_beep = 0;
 spec->gen.own_eapd_ctl = 1;
 spec->gen.power_down_unused = 1;

 spec->gen.beep_nid = 0x19;
 spec->pwr_nids = stac92hd95_pwr_nids;
 spec->num_pwrs = ARRAY_SIZE(stac92hd95_pwr_nids);
 spec->default_polarity = -1;

 codec->patch_ops = stac_patch_ops;

 err = stac_parse_auto_config(codec);
 if (err < 0) {
  stac_free(codec);
  return err;
 }

 codec->proc_widget_hook = stac92hd_proc_hook;

 return 0;
}
