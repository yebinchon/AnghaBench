
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si3054_spec {int dummy; } ;
struct hda_codec {int patch_ops; struct si3054_spec* spec; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct si3054_spec* kzalloc (int,int ) ;
 int si3054_patch_ops ;

__attribute__((used)) static int patch_si3054(struct hda_codec *codec)
{
 struct si3054_spec *spec = kzalloc(sizeof(*spec), GFP_KERNEL);
 if (spec == ((void*)0))
  return -ENOMEM;
 codec->spec = spec;
 codec->patch_ops = si3054_patch_ops;
 return 0;
}
