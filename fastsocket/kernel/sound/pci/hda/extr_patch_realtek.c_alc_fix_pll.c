
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct alc_spec* spec; } ;
struct alc_spec {unsigned int pll_coef_idx; int pll_coef_bit; int pll_nid; } ;


 int AC_VERB_GET_PROC_COEF ;
 int AC_VERB_SET_COEF_INDEX ;
 int AC_VERB_SET_PROC_COEF ;
 unsigned int snd_hda_codec_read (struct hda_codec*,int ,int ,int ,int ) ;
 int snd_hda_codec_write (struct hda_codec*,int ,int ,int ,unsigned int) ;

__attribute__((used)) static void alc_fix_pll(struct hda_codec *codec)
{
 struct alc_spec *spec = codec->spec;
 unsigned int val;

 if (!spec->pll_nid)
  return;
 snd_hda_codec_write(codec, spec->pll_nid, 0, AC_VERB_SET_COEF_INDEX,
       spec->pll_coef_idx);
 val = snd_hda_codec_read(codec, spec->pll_nid, 0,
     AC_VERB_GET_PROC_COEF, 0);
 snd_hda_codec_write(codec, spec->pll_nid, 0, AC_VERB_SET_COEF_INDEX,
       spec->pll_coef_idx);
 snd_hda_codec_write(codec, spec->pll_nid, 0, AC_VERB_SET_PROC_COEF,
       val & ~(1 << spec->pll_coef_bit));
}
