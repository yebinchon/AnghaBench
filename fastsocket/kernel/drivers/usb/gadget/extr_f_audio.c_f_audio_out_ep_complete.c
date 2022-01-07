
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_request {scalar_t__ actual; int buf; struct f_audio* context; } ;
struct usb_ep {int name; } ;
struct usb_composite_dev {int dummy; } ;
struct f_audio_buf {scalar_t__ actual; scalar_t__ buf; int list; } ;
struct TYPE_5__ {TYPE_1__* config; } ;
struct TYPE_6__ {TYPE_2__ func; } ;
struct f_audio {struct f_audio_buf* copy_buf; int playback_work; int play_queue; TYPE_3__ card; } ;
struct TYPE_4__ {struct usb_composite_dev* cdev; } ;


 int EINVAL ;
 int ENOMEM ;
 int ERROR (struct usb_composite_dev*,char*,int ,int) ;
 int GFP_ATOMIC ;
 scalar_t__ audio_buf_size ;
 struct f_audio_buf* f_audio_buffer_alloc (scalar_t__) ;
 int list_add_tail (int *,int *) ;
 int memcpy (scalar_t__,int ,scalar_t__) ;
 int schedule_work (int *) ;
 int usb_ep_queue (struct usb_ep*,struct usb_request*,int ) ;

__attribute__((used)) static int f_audio_out_ep_complete(struct usb_ep *ep, struct usb_request *req)
{
 struct f_audio *audio = req->context;
 struct usb_composite_dev *cdev = audio->card.func.config->cdev;
 struct f_audio_buf *copy_buf = audio->copy_buf;
 int err;

 if (!copy_buf)
  return -EINVAL;


 if (audio_buf_size - copy_buf->actual < req->actual) {
  list_add_tail(&copy_buf->list, &audio->play_queue);
  schedule_work(&audio->playback_work);
  copy_buf = f_audio_buffer_alloc(audio_buf_size);
  if (copy_buf < 0)
   return -ENOMEM;
 }

 memcpy(copy_buf->buf + copy_buf->actual, req->buf, req->actual);
 copy_buf->actual += req->actual;
 audio->copy_buf = copy_buf;

 err = usb_ep_queue(ep, req, GFP_ATOMIC);
 if (err)
  ERROR(cdev, "%s queue req: %d\n", ep->name, err);

 return 0;

}
