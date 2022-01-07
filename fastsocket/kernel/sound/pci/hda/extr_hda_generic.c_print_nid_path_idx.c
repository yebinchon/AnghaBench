
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nid_path {int dummy; } ;
struct hda_codec {int dummy; } ;


 int print_nid_path (char const*,struct nid_path*) ;
 struct nid_path* snd_hda_get_path_from_idx (struct hda_codec*,int) ;

__attribute__((used)) static inline void print_nid_path_idx(struct hda_codec *codec,
          const char *pfx, int idx)
{
 struct nid_path *path;

 path = snd_hda_get_path_from_idx(codec, idx);
 if (path)
  print_nid_path(pfx, path);
}
