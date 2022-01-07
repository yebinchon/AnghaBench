
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_pintbl {int member_0; int member_1; } ;
struct hda_fixup {int dummy; } ;
struct hda_codec {struct alc_spec* spec; } ;
struct alc_spec {int init_amp; } ;


 int ALC_INIT_NONE ;


 int snd_hda_apply_pincfgs (struct hda_codec*,struct hda_pintbl const*) ;

__attribute__((used)) static void alc260_fixup_kn1(struct hda_codec *codec,
        const struct hda_fixup *fix, int action)
{
 struct alc_spec *spec = codec->spec;
 static const struct hda_pintbl pincfgs[] = {
  { 0x0f, 0x02214000 },
  { 0x12, 0x90a60160 },
  { 0x13, 0x02a19000 },
  { 0x18, 0x01446000 },

  { 0x10, 0x411111f0 },
  { 0x11, 0x411111f0 },
  { 0x14, 0x411111f0 },
  { 0x15, 0x411111f0 },
  { 0x16, 0x411111f0 },
  { 0x17, 0x411111f0 },
  { 0x19, 0x411111f0 },
  { }
 };

 switch (action) {
 case 129:
  snd_hda_apply_pincfgs(codec, pincfgs);
  break;
 case 128:
  spec->init_amp = ALC_INIT_NONE;
  break;
 }
}
