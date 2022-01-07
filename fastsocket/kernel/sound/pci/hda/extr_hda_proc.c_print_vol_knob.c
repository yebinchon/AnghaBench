
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_info_buffer {int dummy; } ;
struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int AC_PAR_VOL_KNB_CAP ;
 int AC_VERB_GET_VOLUME_KNOB_CONTROL ;
 unsigned int snd_hda_codec_read (struct hda_codec*,int ,int ,int ,int ) ;
 unsigned int snd_hda_param_read (struct hda_codec*,int ,int ) ;
 int snd_iprintf (struct snd_info_buffer*,char*,unsigned int,unsigned int) ;

__attribute__((used)) static void print_vol_knob(struct snd_info_buffer *buffer,
      struct hda_codec *codec, hda_nid_t nid)
{
 unsigned int cap = snd_hda_param_read(codec, nid,
           AC_PAR_VOL_KNB_CAP);
 snd_iprintf(buffer, "  Volume-Knob: delta=%d, steps=%d, ",
      (cap >> 7) & 1, cap & 0x7f);
 cap = snd_hda_codec_read(codec, nid, 0,
     AC_VERB_GET_VOLUME_KNOB_CONTROL, 0);
 snd_iprintf(buffer, "direct=%d, val=%d\n",
      (cap >> 7) & 1, cap & 0x7f);
}
