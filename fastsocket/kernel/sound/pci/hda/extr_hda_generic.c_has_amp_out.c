
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nid_path {int * path; } ;
struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 unsigned int AC_WCAP_OUT_AMP ;
 unsigned int AC_WID_PIN ;
 unsigned int get_wcaps (struct hda_codec*,int ) ;
 unsigned int get_wcaps_type (unsigned int) ;

__attribute__((used)) static bool has_amp_out(struct hda_codec *codec, struct nid_path *path, int idx)
{
 hda_nid_t nid = path->path[idx];
 unsigned int caps = get_wcaps(codec, nid);
 unsigned int type = get_wcaps_type(caps);

 if (!(caps & AC_WCAP_OUT_AMP))
  return 0;
 if (type == AC_WID_PIN && !idx)
  return 0;
 return 1;
}
