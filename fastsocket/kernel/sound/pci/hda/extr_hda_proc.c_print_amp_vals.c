
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_info_buffer {int dummy; } ;
struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int AC_AMP_GET_INPUT ;
 int AC_AMP_GET_LEFT ;
 int AC_AMP_GET_OUTPUT ;
 int AC_AMP_GET_RIGHT ;
 int AC_VERB_GET_AMP_GAIN_MUTE ;
 int HDA_OUTPUT ;
 unsigned int snd_hda_codec_read (struct hda_codec*,int ,int ,int ,int) ;
 int snd_iprintf (struct snd_info_buffer*,char*,...) ;

__attribute__((used)) static void print_amp_vals(struct snd_info_buffer *buffer,
      struct hda_codec *codec, hda_nid_t nid,
      int dir, int stereo, int indices)
{
 unsigned int val;
 int i;

 dir = dir == HDA_OUTPUT ? AC_AMP_GET_OUTPUT : AC_AMP_GET_INPUT;
 for (i = 0; i < indices; i++) {
  snd_iprintf(buffer, " [");
  val = snd_hda_codec_read(codec, nid, 0,
      AC_VERB_GET_AMP_GAIN_MUTE,
      AC_AMP_GET_LEFT | dir | i);
  snd_iprintf(buffer, "0x%02x", val);
  if (stereo) {
   val = snd_hda_codec_read(codec, nid, 0,
       AC_VERB_GET_AMP_GAIN_MUTE,
       AC_AMP_GET_RIGHT | dir | i);
   snd_iprintf(buffer, " 0x%02x", val);
  }
  snd_iprintf(buffer, "]");
 }
 snd_iprintf(buffer, "\n");
}
