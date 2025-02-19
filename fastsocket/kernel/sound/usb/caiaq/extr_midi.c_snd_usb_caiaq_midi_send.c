
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int transfer_buffer_length; } ;
struct snd_usb_caiaqdev {int* midi_out_buf; int midi_out_active; TYPE_1__ midi_out_urb; } ;
struct snd_rawmidi_substream {int dummy; } ;


 scalar_t__ EP1_BUFSIZE ;
 int EP1_CMD_MIDI_WRITE ;
 int GFP_ATOMIC ;
 int log (char*,struct snd_rawmidi_substream*,int,int) ;
 int snd_rawmidi_transmit (struct snd_rawmidi_substream*,int*,scalar_t__) ;
 int usb_submit_urb (TYPE_1__*,int ) ;

__attribute__((used)) static void snd_usb_caiaq_midi_send(struct snd_usb_caiaqdev *dev,
        struct snd_rawmidi_substream *substream)
{
 int len, ret;

 dev->midi_out_buf[0] = EP1_CMD_MIDI_WRITE;
 dev->midi_out_buf[1] = 0;
 len = snd_rawmidi_transmit(substream, dev->midi_out_buf + 3,
       EP1_BUFSIZE - 3);

 if (len <= 0)
  return;

 dev->midi_out_buf[2] = len;
 dev->midi_out_urb.transfer_buffer_length = len+3;

 ret = usb_submit_urb(&dev->midi_out_urb, GFP_ATOMIC);
 if (ret < 0)
  log("snd_usb_caiaq_midi_send(%p): usb_submit_urb() failed,"
      "ret=%d, len=%d\n",
      substream, ret, len);
 else
  dev->midi_out_active = 1;
}
