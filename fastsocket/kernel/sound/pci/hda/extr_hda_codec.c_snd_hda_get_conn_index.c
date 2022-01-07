
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int const hda_nid_t ;


 unsigned int AC_WID_AUD_OUT ;
 unsigned int AC_WID_PIN ;
 int get_wcaps (struct hda_codec*,int const) ;
 unsigned int get_wcaps_type (int ) ;
 int snd_hda_get_conn_list (struct hda_codec*,int const,int const**) ;
 int snd_printd (char*,int const) ;

int snd_hda_get_conn_index(struct hda_codec *codec, hda_nid_t mux,
      hda_nid_t nid, int recursive)
{
 const hda_nid_t *conn;
 int i, nums;

 nums = snd_hda_get_conn_list(codec, mux, &conn);
 for (i = 0; i < nums; i++)
  if (conn[i] == nid)
   return i;
 if (!recursive)
  return -1;
 if (recursive > 10) {
  snd_printd("hda_codec: too deep connection for 0x%x\n", nid);
  return -1;
 }
 recursive++;
 for (i = 0; i < nums; i++) {
  unsigned int type = get_wcaps_type(get_wcaps(codec, conn[i]));
  if (type == AC_WID_PIN || type == AC_WID_AUD_OUT)
   continue;
  if (snd_hda_get_conn_index(codec, conn[i], nid, recursive) >= 0)
   return i;
 }
 return -1;
}
