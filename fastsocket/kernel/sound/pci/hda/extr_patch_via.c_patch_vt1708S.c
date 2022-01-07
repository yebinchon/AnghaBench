
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mixer_nid; } ;
struct via_spec {int set_widgets_power_state; int num_iverbs; int * init_verbs; TYPE_1__ gen; } ;
struct hda_codec {char* chip_name; char* vendor_name; int vendor_id; int patch_ops; TYPE_3__* bus; } ;
struct TYPE_6__ {TYPE_2__* card; } ;
struct TYPE_5__ {int mixername; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ VT1708BCE ;
 scalar_t__ get_codec_type (struct hda_codec*) ;
 int kfree (char*) ;
 void* kstrdup (char*,int ) ;
 int override_mic_boost (struct hda_codec*,int,int ,int,int) ;
 int set_widgets_power_state_vt1708B ;
 int snprintf (int ,int,char*,char*,char*) ;
 int via_free (struct hda_codec*) ;
 struct via_spec* via_new_spec (struct hda_codec*) ;
 int via_parse_auto_config (struct hda_codec*) ;
 int via_patch_ops ;
 int vt1708S_init_verbs ;

__attribute__((used)) static int patch_vt1708S(struct hda_codec *codec)
{
 struct via_spec *spec;
 int err;


 spec = via_new_spec(codec);
 if (spec == ((void*)0))
  return -ENOMEM;

 spec->gen.mixer_nid = 0x16;
 override_mic_boost(codec, 0x1a, 0, 3, 40);
 override_mic_boost(codec, 0x1e, 0, 3, 40);


 if (get_codec_type(codec) == VT1708BCE) {
  kfree(codec->chip_name);
  codec->chip_name = kstrdup("VT1708BCE", GFP_KERNEL);
  snprintf(codec->bus->card->mixername,
    sizeof(codec->bus->card->mixername),
    "%s %s", codec->vendor_name, codec->chip_name);
 }

 if (codec->vendor_id == 0x11064397) {
  kfree(codec->chip_name);
  codec->chip_name = kstrdup("VT1705", GFP_KERNEL);
  snprintf(codec->bus->card->mixername,
    sizeof(codec->bus->card->mixername),
    "%s %s", codec->vendor_name, codec->chip_name);
 }


 err = via_parse_auto_config(codec);
 if (err < 0) {
  via_free(codec);
  return err;
 }

 spec->init_verbs[spec->num_iverbs++] = vt1708S_init_verbs;

 codec->patch_ops = via_patch_ops;

 spec->set_widgets_power_state = set_widgets_power_state_vt1708B;
 return 0;
}
