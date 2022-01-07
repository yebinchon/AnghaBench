
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_info_buffer {int dummy; } ;
struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int AC_UNSOL_ENABLED ;
 int AC_UNSOL_TAG ;
 int AC_VERB_GET_UNSOLICITED_RESPONSE ;
 int snd_hda_codec_read (struct hda_codec*,int ,int ,int ,int ) ;
 int snd_iprintf (struct snd_info_buffer*,char*,int,int) ;

__attribute__((used)) static void print_unsol_cap(struct snd_info_buffer *buffer,
         struct hda_codec *codec, hda_nid_t nid)
{
 int unsol = snd_hda_codec_read(codec, nid, 0,
           AC_VERB_GET_UNSOLICITED_RESPONSE, 0);
 snd_iprintf(buffer,
      "  Unsolicited: tag=%02x, enabled=%d\n",
      unsol & AC_UNSOL_TAG,
      (unsol & AC_UNSOL_ENABLED) ? 1 : 0);
}
