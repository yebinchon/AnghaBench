
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct ad198x_spec* spec; } ;
struct ad198x_spec {int gen; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct ad198x_spec* kzalloc (int,int ) ;
 int snd_hda_gen_spec_init (int *) ;

__attribute__((used)) static int alloc_ad_spec(struct hda_codec *codec)
{
 struct ad198x_spec *spec;

 spec = kzalloc(sizeof(*spec), GFP_KERNEL);
 if (!spec)
  return -ENOMEM;
 codec->spec = spec;
 snd_hda_gen_spec_init(&spec->gen);
 return 0;
}
