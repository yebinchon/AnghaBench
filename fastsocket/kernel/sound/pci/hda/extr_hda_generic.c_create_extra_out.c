
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nid_path {int dummy; } ;
struct hda_codec {int dummy; } ;


 int add_stereo_sw (struct hda_codec*,char const*,int,struct nid_path*) ;
 int add_stereo_vol (struct hda_codec*,char const*,int,struct nid_path*) ;
 struct nid_path* snd_hda_get_path_from_idx (struct hda_codec*,int) ;

__attribute__((used)) static int create_extra_out(struct hda_codec *codec, int path_idx,
       const char *pfx, int cidx)
{
 struct nid_path *path;
 int err;

 path = snd_hda_get_path_from_idx(codec, path_idx);
 if (!path)
  return 0;
 err = add_stereo_vol(codec, pfx, cidx, path);
 if (err < 0)
  return err;
 err = add_stereo_sw(codec, pfx, cidx, path);
 if (err < 0)
  return err;
 return 0;
}
