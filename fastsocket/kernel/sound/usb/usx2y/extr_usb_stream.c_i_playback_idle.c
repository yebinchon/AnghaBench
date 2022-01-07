
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_stream_kernel {int i_urb; } ;
struct urb {struct usb_stream_kernel* context; } ;


 scalar_t__ balance_playback (struct usb_stream_kernel*,struct urb*) ;
 int stream_idle (struct usb_stream_kernel*,int ,struct urb*) ;

__attribute__((used)) static void i_playback_idle(struct urb *urb)
{
 struct usb_stream_kernel *sk = urb->context;
 if (balance_playback(sk, urb))
  stream_idle(sk, sk->i_urb, urb);
}
