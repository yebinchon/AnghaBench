
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {scalar_t__ afg; } ;
typedef scalar_t__ hda_nid_t ;


 int AC_PAR_PCM ;
 int AC_WCAP_FORMAT_OVRD ;
 int get_wcaps (struct hda_codec*,scalar_t__) ;
 unsigned int snd_hda_param_read (struct hda_codec*,scalar_t__,int ) ;

__attribute__((used)) static unsigned int get_pcm_param(struct hda_codec *codec, hda_nid_t nid,
      int dir)
{
 unsigned int val = 0;
 if (nid != codec->afg &&
     (get_wcaps(codec, nid) & AC_WCAP_FORMAT_OVRD))
  val = snd_hda_param_read(codec, nid, AC_PAR_PCM);
 if (!val || val == -1)
  val = snd_hda_param_read(codec, codec->afg, AC_PAR_PCM);
 if (!val || val == -1)
  return 0;
 return val;
}
