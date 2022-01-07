
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int AC_PAR_CONNLIST_LEN ;
 unsigned int AC_WCAP_CONN_LIST ;
 scalar_t__ AC_WID_VOL_KNB ;
 unsigned int get_wcaps (struct hda_codec*,int ) ;
 scalar_t__ get_wcaps_type (unsigned int) ;
 unsigned int snd_hda_param_read (struct hda_codec*,int ,int ) ;

__attribute__((used)) static unsigned int get_num_conns(struct hda_codec *codec, hda_nid_t nid)
{
 unsigned int wcaps = get_wcaps(codec, nid);
 unsigned int parm;

 if (!(wcaps & AC_WCAP_CONN_LIST) &&
     get_wcaps_type(wcaps) != AC_WID_VOL_KNB)
  return 0;

 parm = snd_hda_param_read(codec, nid, AC_PAR_CONNLIST_LEN);
 if (parm == -1)
  parm = 0;
 return parm;
}
