
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hda_codec {struct conexant_spec* spec; } ;
struct conexant_spec {size_t dc_input_bias; } ;
struct TYPE_4__ {TYPE_1__* items; } ;
struct TYPE_3__ {int index; } ;


 TYPE_2__ cxt5066_olpc_dc_bias ;
 int snd_hda_set_pin_ctl_cache (struct hda_codec*,int,int ) ;

__attribute__((used)) static int cxt5066_set_olpc_dc_bias(struct hda_codec *codec)
{
 struct conexant_spec *spec = codec->spec;



 return snd_hda_set_pin_ctl_cache(codec, 0x1a,
  cxt5066_olpc_dc_bias.items[spec->dc_input_bias].index);
}
