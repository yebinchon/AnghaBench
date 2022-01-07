
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_stream_packet {int dummy; } ;
struct usb_stream_kernel {char* write_page; void** outurb; void** inurb; int n_o_ps; struct usb_stream* s; } ;
struct usb_stream {int inpackets; } ;
struct usb_device {int dummy; } ;


 int GFP_KERNEL ;
 int USB_STREAM_NURBS ;
 int init_pipe_urbs (struct usb_stream_kernel*,unsigned int,void**,char*,struct usb_device*,int) ;
 void* usb_alloc_urb (int ,int ) ;

__attribute__((used)) static void init_urbs(struct usb_stream_kernel *sk, unsigned use_packsize,
        struct usb_device *dev, int in_pipe, int out_pipe)
{
 struct usb_stream *s = sk->s;
 char *indata = (char *)s + sizeof(*s) +
     sizeof(struct usb_stream_packet) *
     s->inpackets;
 int u;

 for (u = 0; u < USB_STREAM_NURBS; ++u) {
  sk->inurb[u] = usb_alloc_urb(sk->n_o_ps, GFP_KERNEL);
  sk->outurb[u] = usb_alloc_urb(sk->n_o_ps, GFP_KERNEL);
 }

 init_pipe_urbs(sk, use_packsize, sk->inurb, indata, dev, in_pipe);
 init_pipe_urbs(sk, use_packsize, sk->outurb, sk->write_page, dev,
         out_pipe);
}
