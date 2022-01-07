
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_fixup {int dummy; } ;
struct hda_codec {struct conexant_spec* spec; } ;
struct TYPE_2__ {int inv_dmic_split; } ;
struct conexant_spec {TYPE_1__ gen; } ;



__attribute__((used)) static void cxt_fixup_stereo_dmic(struct hda_codec *codec,
      const struct hda_fixup *fix, int action)
{
 struct conexant_spec *spec = codec->spec;
 spec->gen.inv_dmic_split = 1;
}
