
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nid_path {int depth; int * path; } ;
struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int HDA_INPUT ;
 int HDA_OUTPUT ;
 scalar_t__ nid_has_mute (struct hda_codec*,int ,int ) ;

__attribute__((used)) static hda_nid_t look_for_out_mute_nid(struct hda_codec *codec,
           struct nid_path *path)
{
 int i;

 for (i = path->depth - 1; i >= 0; i--) {
  if (nid_has_mute(codec, path->path[i], HDA_OUTPUT))
   return path->path[i];
  if (i != path->depth - 1 && i != 0 &&
      nid_has_mute(codec, path->path[i], HDA_INPUT))
   return path->path[i];
 }
 return 0;
}
