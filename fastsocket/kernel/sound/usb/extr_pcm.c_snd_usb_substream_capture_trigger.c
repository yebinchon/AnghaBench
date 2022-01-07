
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_usb_substream {int running; TYPE_1__* data_endpoint; } ;
struct snd_pcm_substream {TYPE_2__* runtime; } ;
struct TYPE_4__ {struct snd_usb_substream* private_data; } ;
struct TYPE_3__ {int * retire_data_urb; } ;


 int EINVAL ;




 void* retire_capture_urb ;
 int start_endpoints (struct snd_usb_substream*,int ) ;
 int stop_endpoints (struct snd_usb_substream*,int ,int ,int ) ;

__attribute__((used)) static int snd_usb_substream_capture_trigger(struct snd_pcm_substream *substream,
          int cmd)
{
 int err;
 struct snd_usb_substream *subs = substream->runtime->private_data;

 switch (cmd) {
 case 129:
  err = start_endpoints(subs, 0);
  if (err < 0)
   return err;

  subs->data_endpoint->retire_data_urb = retire_capture_urb;
  subs->running = 1;
  return 0;
 case 128:
  stop_endpoints(subs, 0, 0, 0);
  subs->running = 0;
  return 0;
 case 131:
  subs->data_endpoint->retire_data_urb = ((void*)0);
  subs->running = 0;
  return 0;
 case 130:
  subs->data_endpoint->retire_data_urb = retire_capture_urb;
  subs->running = 1;
  return 0;
 }

 return -EINVAL;
}
