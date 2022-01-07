
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_stream_kernel {int iso_frame_balance; } ;
struct urb {scalar_t__ number_of_packets; } ;


 int balance_check (struct usb_stream_kernel*,struct urb*) ;

__attribute__((used)) static bool balance_playback(struct usb_stream_kernel *sk, struct urb *urb)
{
 sk->iso_frame_balance += urb->number_of_packets;
 return balance_check(sk, urb);
}
