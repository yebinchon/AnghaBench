
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_request {int complete; struct f_audio* context; int length; scalar_t__ buf; } ;
struct usb_function {TYPE_1__* config; } ;
struct usb_ep {int name; struct f_audio* driver_data; } ;
struct usb_composite_dev {int dummy; } ;
struct f_audio_buf {int list; } ;
struct f_audio {int playback_work; int play_queue; struct f_audio_buf* copy_buf; int out_desc; struct usb_ep* out_ep; } ;
struct TYPE_2__ {struct usb_composite_dev* cdev; } ;


 int DBG (struct usb_composite_dev*,char*,unsigned int,unsigned int) ;
 int ENOMEM ;
 int ERROR (struct usb_composite_dev*,char*,int ,int) ;
 int GFP_ATOMIC ;
 int audio_buf_size ;
 struct f_audio_buf* f_audio_buffer_alloc (int ) ;
 int f_audio_complete ;
 struct f_audio* func_to_audio (struct usb_function*) ;
 scalar_t__ kzalloc (int ,int ) ;
 int list_add_tail (int *,int *) ;
 int req_buf_size ;
 int req_count ;
 int schedule_work (int *) ;
 struct usb_request* usb_ep_alloc_request (struct usb_ep*,int ) ;
 int usb_ep_enable (struct usb_ep*,int ) ;
 int usb_ep_queue (struct usb_ep*,struct usb_request*,int ) ;

__attribute__((used)) static int f_audio_set_alt(struct usb_function *f, unsigned intf, unsigned alt)
{
 struct f_audio *audio = func_to_audio(f);
 struct usb_composite_dev *cdev = f->config->cdev;
 struct usb_ep *out_ep = audio->out_ep;
 struct usb_request *req;
 int i = 0, err = 0;

 DBG(cdev, "intf %d, alt %d\n", intf, alt);

 if (intf == 1) {
  if (alt == 1) {
   usb_ep_enable(out_ep, audio->out_desc);
   out_ep->driver_data = audio;
   audio->copy_buf = f_audio_buffer_alloc(audio_buf_size);





   for (i = 0; i < req_count && err == 0; i++) {
    req = usb_ep_alloc_request(out_ep, GFP_ATOMIC);
    if (req) {
     req->buf = kzalloc(req_buf_size,
       GFP_ATOMIC);
     if (req->buf) {
      req->length = req_buf_size;
      req->context = audio;
      req->complete =
       f_audio_complete;
      err = usb_ep_queue(out_ep,
       req, GFP_ATOMIC);
      if (err)
       ERROR(cdev,
       "%s queue req: %d\n",
       out_ep->name, err);
     } else
      err = -ENOMEM;
    } else
     err = -ENOMEM;
   }

  } else {
   struct f_audio_buf *copy_buf = audio->copy_buf;
   if (copy_buf) {
    list_add_tail(&copy_buf->list,
      &audio->play_queue);
    schedule_work(&audio->playback_work);
   }
  }
 }

 return err;
}
