
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int line_outs; } ;
struct hda_gen_spec {int * out_paths; TYPE_1__ autocfg; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;


 int set_output_and_unmute (struct hda_codec*,int ) ;

__attribute__((used)) static void init_multi_out(struct hda_codec *codec)
{
 struct hda_gen_spec *spec = codec->spec;
 int i;

 for (i = 0; i < spec->autocfg.line_outs; i++)
  set_output_and_unmute(codec, spec->out_paths[i]);
}
