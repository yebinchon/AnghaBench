
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hdmi_audio_infoframe {size_t length; int channels; int type; int version; int coding_type; int sample_frequency; int sample_size; int coding_type_ext; int channel_allocation; int level_shift_value; scalar_t__ downmix_inhibit; } ;
typedef size_t ssize_t ;


 int BIT (int) ;
 size_t ENOSPC ;
 size_t HDMI_INFOFRAME_HEADER_SIZE ;
 int hdmi_infoframe_checksum (void*,size_t) ;
 int memset (void*,int ,size_t) ;

ssize_t hdmi_audio_infoframe_pack(struct hdmi_audio_infoframe *frame,
      void *buffer, size_t size)
{
 unsigned char channels;
 u8 *ptr = buffer;
 size_t length;

 length = HDMI_INFOFRAME_HEADER_SIZE + frame->length;

 if (size < length)
  return -ENOSPC;

 memset(buffer, 0, length);

 if (frame->channels >= 2)
  channels = frame->channels - 1;
 else
  channels = 0;

 ptr[0] = frame->type;
 ptr[1] = frame->version;
 ptr[2] = frame->length;
 ptr[3] = 0;


 ptr += HDMI_INFOFRAME_HEADER_SIZE;

 ptr[0] = ((frame->coding_type & 0xf) << 4) | (channels & 0x7);
 ptr[1] = ((frame->sample_frequency & 0x7) << 2) |
   (frame->sample_size & 0x3);
 ptr[2] = frame->coding_type_ext & 0x1f;
 ptr[3] = frame->channel_allocation;
 ptr[4] = (frame->level_shift_value & 0xf) << 3;

 if (frame->downmix_inhibit)
  ptr[4] |= BIT(7);

 hdmi_infoframe_checksum(buffer, length);

 return length;
}
