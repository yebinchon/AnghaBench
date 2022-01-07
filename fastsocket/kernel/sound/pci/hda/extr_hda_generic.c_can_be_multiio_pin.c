
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 scalar_t__ AC_JACK_PORT_COMPLEX ;
 unsigned int AC_PINCAP_OUT ;
 scalar_t__ get_defcfg_connect (unsigned int) ;
 unsigned int get_defcfg_location (unsigned int) ;
 unsigned int snd_hda_codec_get_pincfg (struct hda_codec*,int ) ;
 unsigned int snd_hda_query_pin_caps (struct hda_codec*,int ) ;

__attribute__((used)) static bool can_be_multiio_pin(struct hda_codec *codec,
          unsigned int location, hda_nid_t nid)
{
 unsigned int defcfg, caps;

 defcfg = snd_hda_codec_get_pincfg(codec, nid);
 if (get_defcfg_connect(defcfg) != AC_JACK_PORT_COMPLEX)
  return 0;
 if (location && get_defcfg_location(defcfg) != location)
  return 0;
 caps = snd_hda_query_pin_caps(codec, nid);
 if (!(caps & AC_PINCAP_OUT))
  return 0;
 return 1;
}
