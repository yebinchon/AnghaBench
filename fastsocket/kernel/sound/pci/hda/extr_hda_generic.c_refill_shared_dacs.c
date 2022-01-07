
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nid_path {scalar_t__* path; } ;
struct hda_codec {int dummy; } ;
typedef scalar_t__ hda_nid_t ;


 struct nid_path* snd_hda_get_path_from_idx (struct hda_codec*,int) ;

__attribute__((used)) static void refill_shared_dacs(struct hda_codec *codec, int num_outs,
          hda_nid_t *dacs, int *path_idx)
{
 struct nid_path *path;
 int i;

 for (i = 0; i < num_outs; i++) {
  if (dacs[i])
   continue;
  path = snd_hda_get_path_from_idx(codec, path_idx[i]);
  if (!path)
   continue;
  dacs[i] = path->path[0];
 }
}
