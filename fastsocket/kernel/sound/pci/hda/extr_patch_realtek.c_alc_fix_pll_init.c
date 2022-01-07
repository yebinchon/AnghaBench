
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct alc_spec* spec; } ;
struct alc_spec {unsigned int pll_coef_idx; unsigned int pll_coef_bit; int pll_nid; } ;
typedef int hda_nid_t ;


 int alc_fix_pll (struct hda_codec*) ;

__attribute__((used)) static void alc_fix_pll_init(struct hda_codec *codec, hda_nid_t nid,
        unsigned int coef_idx, unsigned int coef_bit)
{
 struct alc_spec *spec = codec->spec;
 spec->pll_nid = nid;
 spec->pll_coef_idx = coef_idx;
 spec->pll_coef_bit = coef_bit;
 alc_fix_pll(codec);
}
