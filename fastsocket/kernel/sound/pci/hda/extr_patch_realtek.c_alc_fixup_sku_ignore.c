
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_fixup {int dummy; } ;
struct hda_codec {struct alc_spec* spec; } ;
struct TYPE_2__ {int fixup; int sku_cfg; } ;
struct alc_spec {TYPE_1__ cdefine; } ;


 int ALC_FIXUP_SKU_IGNORE ;
 int HDA_FIXUP_ACT_PRE_PROBE ;

__attribute__((used)) static void alc_fixup_sku_ignore(struct hda_codec *codec,
     const struct hda_fixup *fix, int action)
{
 struct alc_spec *spec = codec->spec;
 if (action == HDA_FIXUP_ACT_PRE_PROBE) {
  spec->cdefine.fixup = 1;
  spec->cdefine.sku_cfg = ALC_FIXUP_SKU_IGNORE;
 }
}
