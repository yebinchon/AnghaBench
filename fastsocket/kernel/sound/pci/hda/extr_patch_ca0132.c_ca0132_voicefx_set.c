
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_codec {struct ca0132_spec* spec; } ;
struct ca0132_spec {scalar_t__* effects_switch; } ;
struct TYPE_2__ {int * reqs; int mid; } ;


 size_t CRYSTAL_VOICE ;
 size_t EFFECT_START_NID ;
 unsigned int FLOAT_ONE ;
 unsigned int FLOAT_ZERO ;
 TYPE_1__ ca0132_voicefx ;
 int dspio_set_uint_param (struct hda_codec*,int ,int ,unsigned int) ;

__attribute__((used)) static int ca0132_voicefx_set(struct hda_codec *codec, int enable)
{
 struct ca0132_spec *spec = codec->spec;
 unsigned int tmp;


 if (enable) {
  tmp = spec->effects_switch[CRYSTAL_VOICE - EFFECT_START_NID] ?
   FLOAT_ONE : FLOAT_ZERO;
 } else {
  tmp = FLOAT_ZERO;
 }

 dspio_set_uint_param(codec, ca0132_voicefx.mid,
        ca0132_voicefx.reqs[0], tmp);

 return 1;
}
