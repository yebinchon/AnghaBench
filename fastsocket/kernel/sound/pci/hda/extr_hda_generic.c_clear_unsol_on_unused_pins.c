
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_pincfg {int nid; } ;
struct TYPE_2__ {int used; } ;
struct hda_codec {TYPE_1__ init_pins; } ;
typedef int hda_nid_t ;


 int AC_VERB_SET_UNSOLICITED_ENABLE ;
 scalar_t__ is_jack_detectable (struct hda_codec*,int ) ;
 struct hda_pincfg* snd_array_elem (TYPE_1__*,int) ;
 int snd_hda_codec_update_cache (struct hda_codec*,int ,int ,int ,int ) ;
 int snd_hda_jack_tbl_get (struct hda_codec*,int ) ;

__attribute__((used)) static void clear_unsol_on_unused_pins(struct hda_codec *codec)
{
 int i;

 for (i = 0; i < codec->init_pins.used; i++) {
  struct hda_pincfg *pin = snd_array_elem(&codec->init_pins, i);
  hda_nid_t nid = pin->nid;
  if (is_jack_detectable(codec, nid) &&
      !snd_hda_jack_tbl_get(codec, nid))
   snd_hda_codec_update_cache(codec, nid, 0,
     AC_VERB_SET_UNSOLICITED_ENABLE, 0);
 }
}
