
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigmatel_spec {int gen; } ;
struct hda_codec {int no_trigger_sense; struct sigmatel_spec* spec; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct sigmatel_spec* kzalloc (int,int ) ;
 int snd_hda_gen_spec_init (int *) ;

__attribute__((used)) static int alloc_stac_spec(struct hda_codec *codec)
{
 struct sigmatel_spec *spec;

 spec = kzalloc(sizeof(*spec), GFP_KERNEL);
 if (!spec)
  return -ENOMEM;
 snd_hda_gen_spec_init(&spec->gen);
 codec->spec = spec;
 codec->no_trigger_sense = 1;
 return 0;
}
