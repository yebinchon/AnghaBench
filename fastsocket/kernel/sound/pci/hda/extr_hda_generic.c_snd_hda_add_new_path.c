
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nid_path {int dummy; } ;
struct TYPE_2__ {int used; } ;
struct hda_gen_spec {TYPE_1__ paths; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;
typedef scalar_t__ hda_nid_t ;


 struct nid_path* get_nid_path (struct hda_codec*,scalar_t__,scalar_t__,int) ;
 int is_reachable_path (struct hda_codec*,scalar_t__,scalar_t__) ;
 int memset (struct nid_path*,int ,int) ;
 struct nid_path* snd_array_new (TYPE_1__*) ;
 scalar_t__ snd_hda_parse_nid_path (struct hda_codec*,scalar_t__,scalar_t__,int,struct nid_path*) ;

struct nid_path *
snd_hda_add_new_path(struct hda_codec *codec, hda_nid_t from_nid,
       hda_nid_t to_nid, int anchor_nid)
{
 struct hda_gen_spec *spec = codec->spec;
 struct nid_path *path;

 if (from_nid && to_nid && !is_reachable_path(codec, from_nid, to_nid))
  return ((void*)0);


 path = get_nid_path(codec, from_nid, to_nid, anchor_nid);
 if (path)
  return path;

 path = snd_array_new(&spec->paths);
 if (!path)
  return ((void*)0);
 memset(path, 0, sizeof(*path));
 if (snd_hda_parse_nid_path(codec, from_nid, to_nid, anchor_nid, path))
  return path;

 spec->paths.used--;
 return ((void*)0);
}
