
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nid_path {int dummy; } ;
struct hda_codec {int dummy; } ;


 int NID_PATH_VOL_CTL ;
 int add_vol_ctl (struct hda_codec*,char const*,int,int,struct nid_path*) ;
 int get_default_ch_nums (struct hda_codec*,struct nid_path*,int ) ;

__attribute__((used)) static int add_stereo_vol(struct hda_codec *codec, const char *pfx, int cidx,
     struct nid_path *path)
{
 int chs = get_default_ch_nums(codec, path, NID_PATH_VOL_CTL);
 return add_vol_ctl(codec, pfx, cidx, chs, path);
}
