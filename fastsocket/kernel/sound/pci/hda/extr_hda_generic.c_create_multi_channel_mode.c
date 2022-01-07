
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_gen_spec {scalar_t__ multi_ios; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;


 int ENOMEM ;
 int channel_mode_enum ;
 int snd_hda_gen_add_kctl (struct hda_gen_spec*,int *,int *) ;

__attribute__((used)) static int create_multi_channel_mode(struct hda_codec *codec)
{
 struct hda_gen_spec *spec = codec->spec;

 if (spec->multi_ios > 0) {
  if (!snd_hda_gen_add_kctl(spec, ((void*)0), &channel_mode_enum))
   return -ENOMEM;
 }
 return 0;
}
