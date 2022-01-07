
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int hdmi_clear_dip_buffers (struct hda_codec*,int ) ;
 int hdmi_debug_dip_size (struct hda_codec*,int ) ;
 int hdmi_set_dip_index (struct hda_codec*,int ,int,int) ;
 int hdmi_write_dip_byte (struct hda_codec*,int ,int ) ;

__attribute__((used)) static void hdmi_fill_audio_infoframe(struct hda_codec *codec,
          hda_nid_t pin_nid,
          u8 *dip, int size)
{
 int i;

 hdmi_debug_dip_size(codec, pin_nid);
 hdmi_clear_dip_buffers(codec, pin_nid);

 hdmi_set_dip_index(codec, pin_nid, 0x0, 0x0);
 for (i = 0; i < size; i++)
  hdmi_write_dip_byte(codec, pin_nid, dip[i]);
}
