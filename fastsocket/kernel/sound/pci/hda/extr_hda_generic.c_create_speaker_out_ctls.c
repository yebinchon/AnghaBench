
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int speaker_outs; } ;
struct hda_gen_spec {int speaker_paths; TYPE_1__ autocfg; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;


 int create_extra_outs (struct hda_codec*,int ,int ,char*) ;

__attribute__((used)) static int create_speaker_out_ctls(struct hda_codec *codec)
{
 struct hda_gen_spec *spec = codec->spec;
 return create_extra_outs(codec, spec->autocfg.speaker_outs,
     spec->speaker_paths,
     "Speaker");
}
