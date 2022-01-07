
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nid_path {int* path; size_t depth; int* idx; int* multi; } ;
struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 unsigned int AC_WID_AUD_IN ;
 unsigned int AC_WID_AUD_MIX ;
 unsigned int AC_WID_AUD_OUT ;
 unsigned int AC_WID_PIN ;
 int MAX_NID_PATH_DEPTH ;
 int get_wcaps (struct hda_codec*,int const) ;
 unsigned int get_wcaps_type (int ) ;
 scalar_t__ is_dac_already_used (struct hda_codec*,int const) ;
 int snd_hda_get_conn_list (struct hda_codec*,int,int const**) ;

__attribute__((used)) static bool __parse_nid_path(struct hda_codec *codec,
        hda_nid_t from_nid, hda_nid_t to_nid,
        int anchor_nid, struct nid_path *path,
        int depth)
{
 const hda_nid_t *conn;
 int i, nums;

 if (to_nid == anchor_nid)
  anchor_nid = 0;
 else if (to_nid == (hda_nid_t)(-anchor_nid))
  return 0;

 nums = snd_hda_get_conn_list(codec, to_nid, &conn);
 for (i = 0; i < nums; i++) {
  if (conn[i] != from_nid) {



   if (from_nid ||
       get_wcaps_type(get_wcaps(codec, conn[i])) != AC_WID_AUD_OUT ||
       is_dac_already_used(codec, conn[i]))
    continue;
  }

  if (anchor_nid <= 0)
   goto found;
 }
 if (depth >= MAX_NID_PATH_DEPTH)
  return 0;
 for (i = 0; i < nums; i++) {
  unsigned int type;
  type = get_wcaps_type(get_wcaps(codec, conn[i]));
  if (type == AC_WID_AUD_OUT || type == AC_WID_AUD_IN ||
      type == AC_WID_PIN)
   continue;
  if (__parse_nid_path(codec, from_nid, conn[i],
         anchor_nid, path, depth + 1))
   goto found;
 }
 return 0;

 found:
 path->path[path->depth] = conn[i];
 path->idx[path->depth + 1] = i;
 if (nums > 1 && get_wcaps_type(get_wcaps(codec, to_nid)) != AC_WID_AUD_MIX)
  path->multi[path->depth + 1] = 1;
 path->depth++;
 return 1;
}
