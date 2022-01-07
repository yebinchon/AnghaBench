
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct usb_ep {struct gmidi_device* driver_data; } ;
struct gmidi_device {TYPE_1__* out_substream; int out_triggered; } ;
struct TYPE_2__ {int number; } ;


 int snd_rawmidi_receive (TYPE_1__*,int *,int) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void gmidi_read_data(struct usb_ep *ep, int cable,
       uint8_t *data, int length)
{
 struct gmidi_device *dev = ep->driver_data;


 if (!dev->out_substream) {

  return;
 }
 if (!test_bit(dev->out_substream->number, &dev->out_triggered)) {
  return;
 }
 snd_rawmidi_receive(dev->out_substream, data, length);
}
