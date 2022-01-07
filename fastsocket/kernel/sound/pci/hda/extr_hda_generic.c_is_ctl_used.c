
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nid_path {unsigned int* ctls; } ;
struct TYPE_2__ {int used; } ;
struct hda_gen_spec {TYPE_1__ paths; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;


 unsigned int AMP_VAL_COMPARE_MASK ;
 struct nid_path* snd_array_elem (TYPE_1__*,int) ;

__attribute__((used)) static bool is_ctl_used(struct hda_codec *codec, unsigned int val, int type)
{
 struct hda_gen_spec *spec = codec->spec;
 int i;

 val &= AMP_VAL_COMPARE_MASK;
 for (i = 0; i < spec->paths.used; i++) {
  struct nid_path *path = snd_array_elem(&spec->paths, i);
  if ((path->ctls[type] & AMP_VAL_COMPARE_MASK) == val)
   return 1;
 }
 return 0;
}
