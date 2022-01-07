
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ua101_stream {unsigned int queue_length; TYPE_1__** urbs; } ;
struct ua101 {TYPE_2__* dev; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int urb; } ;


 int GFP_KERNEL ;
 int dev_err (int *,char*,int,int ) ;
 int usb_error_string (int) ;
 int usb_submit_urb (int *,int ) ;

__attribute__((used)) static int submit_stream_urbs(struct ua101 *ua, struct ua101_stream *stream)
{
 unsigned int i;

 for (i = 0; i < stream->queue_length; ++i) {
  int err = usb_submit_urb(&stream->urbs[i]->urb, GFP_KERNEL);
  if (err < 0) {
   dev_err(&ua->dev->dev, "USB request error %d: %s\n",
    err, usb_error_string(err));
   return err;
  }
 }
 return 0;
}
