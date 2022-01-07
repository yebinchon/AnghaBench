
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int AC_VERB_SET_DIGI_CONVERT_1 ;
 int AC_VERB_SET_DIGI_CONVERT_2 ;
 int set_dig_out (struct hda_codec*,int ,int ,int) ;

__attribute__((used)) static inline void set_dig_out_convert(struct hda_codec *codec, hda_nid_t nid,
           int dig1, int dig2)
{
 if (dig1 != -1)
  set_dig_out(codec, nid, AC_VERB_SET_DIGI_CONVERT_1, dig1);
 if (dig2 != -1)
  set_dig_out(codec, nid, AC_VERB_SET_DIGI_CONVERT_2, dig2);
}
