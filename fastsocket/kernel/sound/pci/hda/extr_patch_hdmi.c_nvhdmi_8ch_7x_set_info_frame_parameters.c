
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int Nv_VERB_SET_Channel_Allocation ;
 int Nv_VERB_SET_Info_Frame_Checksum ;
 int snd_hda_codec_write (struct hda_codec*,int,int ,int ,int) ;

__attribute__((used)) static void nvhdmi_8ch_7x_set_info_frame_parameters(struct hda_codec *codec,
          int channels)
{
 unsigned int chanmask;
 int chan = channels ? (channels - 1) : 1;

 switch (channels) {
 default:
 case 0:
 case 2:
  chanmask = 0x00;
  break;
 case 4:
  chanmask = 0x08;
  break;
 case 6:
  chanmask = 0x0b;
  break;
 case 8:
  chanmask = 0x13;
  break;
 }



 snd_hda_codec_write(codec, 0x1, 0,
   Nv_VERB_SET_Channel_Allocation, chanmask);

 snd_hda_codec_write(codec, 0x1, 0,
   Nv_VERB_SET_Info_Frame_Checksum,
   (0x71 - chan - chanmask));
}
