
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct urb {unsigned char* transfer_buffer; int actual_length; scalar_t__ status; struct snd_usb_caiaqdev* context; } ;
struct TYPE_5__ {scalar_t__ actual_length; } ;
struct TYPE_4__ {int usb_id; } ;
struct TYPE_6__ {int data_alignment; int num_midi_out; int num_midi_in; int num_analog_audio_out; int num_analog_audio_in; int fw_version; } ;
struct snd_usb_caiaqdev {unsigned char audio_parm_answer; TYPE_2__ ep1_in_urb; int ep1_wait_queue; TYPE_3__* control_state; TYPE_1__ chip; int spec_received; TYPE_3__ spec; } ;
struct caiaq_device_spec {int dummy; } ;
 int GFP_ATOMIC ;
 int USB_ID (int ,int ) ;
 int USB_PID_AUDIO8DJ ;
 int USB_VID_NATIVEINSTRUMENTS ;
 int debug (char*,int ,int ,int ,int ,int ,int ) ;
 int le16_to_cpu (int ) ;
 int log (char*,...) ;
 int memcpy (TYPE_3__*,unsigned char*,int) ;
 int snd_usb_caiaq_input_dispatch (struct snd_usb_caiaqdev*,unsigned char*,int) ;
 int snd_usb_caiaq_midi_handle_input (struct snd_usb_caiaqdev*,unsigned char,unsigned char*,unsigned char) ;
 int usb_submit_urb (TYPE_2__*,int ) ;
 int wake_up (int *) ;

__attribute__((used)) static void usb_ep1_command_reply_dispatch (struct urb* urb)
{
 int ret;
 struct snd_usb_caiaqdev *dev = urb->context;
 unsigned char *buf = urb->transfer_buffer;

 if (urb->status || !dev) {
  log("received EP1 urb->status = %i\n", urb->status);
  return;
 }

 switch(buf[0]) {
 case 132:
   memcpy(&dev->spec, buf+1, sizeof(struct caiaq_device_spec));
  dev->spec.fw_version = le16_to_cpu(dev->spec.fw_version);
  debug("device spec (firmware %d): audio: %d in, %d out, "
   "MIDI: %d in, %d out, data alignment %d\n",
   dev->spec.fw_version,
   dev->spec.num_analog_audio_in,
   dev->spec.num_analog_audio_out,
   dev->spec.num_midi_in,
   dev->spec.num_midi_out,
   dev->spec.data_alignment);

  dev->spec_received++;
  wake_up(&dev->ep1_wait_queue);
  break;
 case 133:
  dev->audio_parm_answer = buf[1];
  wake_up(&dev->ep1_wait_queue);
  break;
 case 131:
  snd_usb_caiaq_midi_handle_input(dev, buf[1], buf + 3, buf[2]);
  break;
 case 128:
  if (dev->chip.usb_id ==
   USB_ID(USB_VID_NATIVEINSTRUMENTS, USB_PID_AUDIO8DJ)) {
   if (urb->actual_length > sizeof(dev->control_state))
    urb->actual_length = sizeof(dev->control_state);
   memcpy(dev->control_state, buf + 1, urb->actual_length);
   wake_up(&dev->ep1_wait_queue);
   break;
  }





  break;
 }

 dev->ep1_in_urb.actual_length = 0;
 ret = usb_submit_urb(&dev->ep1_in_urb, GFP_ATOMIC);
 if (ret < 0)
  log("unable to submit urb. OOM!?\n");
}
