
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_iso_packet_descriptor {scalar_t__ actual_length; } ;
struct urb {int dummy; } ;
struct TYPE_2__ {int data_alignment; } ;
struct snd_usb_caiaqdev {scalar_t__ bpp; int warned; scalar_t__ output_panic; scalar_t__ input_panic; TYPE_1__ spec; int streaming; } ;


 int debug (char*,char*,char*) ;
 int read_in_urb_mode0 (struct snd_usb_caiaqdev*,struct urb const*,struct usb_iso_packet_descriptor const*) ;
 int read_in_urb_mode2 (struct snd_usb_caiaqdev*,struct urb const*,struct usb_iso_packet_descriptor const*) ;
 int read_in_urb_mode3 (struct snd_usb_caiaqdev*,struct urb const*,struct usb_iso_packet_descriptor const*) ;

__attribute__((used)) static void read_in_urb(struct snd_usb_caiaqdev *dev,
   const struct urb *urb,
   const struct usb_iso_packet_descriptor *iso)
{
 if (!dev->streaming)
  return;

 if (iso->actual_length < dev->bpp)
  return;

 switch (dev->spec.data_alignment) {
 case 0:
  read_in_urb_mode0(dev, urb, iso);
  break;
 case 2:
  read_in_urb_mode2(dev, urb, iso);
  break;
 case 3:
  read_in_urb_mode3(dev, urb, iso);
  break;
 }

 if ((dev->input_panic || dev->output_panic) && !dev->warned) {
  debug("streaming error detected %s %s\n",
    dev->input_panic ? "(input)" : "",
    dev->output_panic ? "(output)" : "");
  dev->warned = 1;
 }
}
