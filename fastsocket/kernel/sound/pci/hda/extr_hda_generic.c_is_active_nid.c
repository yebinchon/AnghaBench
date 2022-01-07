
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nid_path {int depth; scalar_t__* path; unsigned int* idx; int active; } ;
struct TYPE_2__ {int used; } ;
struct hda_gen_spec {TYPE_1__ paths; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;
typedef scalar_t__ hda_nid_t ;


 unsigned int HDA_OUTPUT ;
 struct nid_path* snd_array_elem (TYPE_1__*,int) ;

__attribute__((used)) static bool is_active_nid(struct hda_codec *codec, hda_nid_t nid,
     unsigned int dir, unsigned int idx)
{
 struct hda_gen_spec *spec = codec->spec;
 int i, n;

 for (n = 0; n < spec->paths.used; n++) {
  struct nid_path *path = snd_array_elem(&spec->paths, n);
  if (!path->active)
   continue;
  for (i = 0; i < path->depth; i++) {
   if (path->path[i] == nid) {
    if (dir == HDA_OUTPUT || path->idx[i] == idx)
     return 1;
    break;
   }
  }
 }
 return 0;
}
