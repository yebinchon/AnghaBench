
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nid_path {int dummy; } ;
struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 struct nid_path* get_nid_path (struct hda_codec*,int ,int ,int ) ;

struct nid_path *snd_hda_get_nid_path(struct hda_codec *codec,
          hda_nid_t from_nid, hda_nid_t to_nid)
{
 return get_nid_path(codec, from_nid, to_nid, 0);
}
