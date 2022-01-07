
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 unsigned int AC_USRSP_EN ;
 int AC_VERB_SET_UNSOLICITED_ENABLE ;
 int snd_hda_codec_write (struct hda_codec*,int ,int ,int ,unsigned int) ;

__attribute__((used)) static void cxt5051_init_mic_port(struct hda_codec *codec, hda_nid_t nid,
     unsigned int event)
{
 snd_hda_codec_write(codec, nid, 0,
       AC_VERB_SET_UNSOLICITED_ENABLE,
       AC_USRSP_EN | event);
}
