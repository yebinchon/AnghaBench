
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct usb_request {int status; int length; int buf; struct f_audio* context; } ;
struct usb_ep {int dummy; } ;
struct f_audio {TYPE_1__* set_con; int set_cmd; struct usb_ep* out_ep; } ;
struct TYPE_2__ {int (* set ) (TYPE_1__*,int ,int ) ;} ;


 int f_audio_out_ep_complete (struct usb_ep*,struct usb_request*) ;
 int le16_to_cpu (int ) ;
 int memcpy (int *,int ,int ) ;
 int stub1 (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void f_audio_complete(struct usb_ep *ep, struct usb_request *req)
{
 struct f_audio *audio = req->context;
 int status = req->status;
 u32 data = 0;
 struct usb_ep *out_ep = audio->out_ep;

 switch (status) {

 case 0:
  if (ep == out_ep)
   f_audio_out_ep_complete(ep, req);
  else if (audio->set_con) {
   memcpy(&data, req->buf, req->length);
   audio->set_con->set(audio->set_con, audio->set_cmd,
     le16_to_cpu(data));
   audio->set_con = ((void*)0);
  }
  break;
 default:
  break;
 }
}
