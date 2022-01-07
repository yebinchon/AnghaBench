
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 scalar_t__ AC_JACK_PORT_NONE ;
 scalar_t__ get_defcfg_connect (unsigned int) ;
 unsigned int snd_hda_codec_get_pincfg (struct hda_codec*,int ) ;

__attribute__((used)) static bool is_active_pin(struct hda_codec *codec, hda_nid_t nid)
{
 unsigned int val;
 val = snd_hda_codec_get_pincfg(codec, nid);
 return (get_defcfg_connect(val) != AC_JACK_PORT_NONE);
}
