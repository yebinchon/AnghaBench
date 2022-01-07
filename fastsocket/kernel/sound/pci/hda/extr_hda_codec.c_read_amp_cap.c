
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int afg; } ;
typedef int hda_nid_t ;


 int AC_PAR_AMP_IN_CAP ;
 int AC_PAR_AMP_OUT_CAP ;
 int AC_WCAP_AMP_OVRD ;
 int HDA_OUTPUT ;
 int get_wcaps (struct hda_codec*,int ) ;
 unsigned int snd_hda_param_read (struct hda_codec*,int ,int ) ;

__attribute__((used)) static unsigned int read_amp_cap(struct hda_codec *codec, hda_nid_t nid,
     int direction)
{
 if (!(get_wcaps(codec, nid) & AC_WCAP_AMP_OVRD))
  nid = codec->afg;
 return snd_hda_param_read(codec, nid,
      direction == HDA_OUTPUT ?
      AC_PAR_AMP_OUT_CAP : AC_PAR_AMP_IN_CAP);
}
