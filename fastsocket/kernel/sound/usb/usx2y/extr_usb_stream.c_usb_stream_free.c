
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_stream_kernel {struct usb_stream* s; int * write_page; int ** outurb; int ** inurb; } ;
struct usb_stream {int read_size; int write_size; } ;


 unsigned int USB_STREAM_NURBS ;
 int free_pages (unsigned long,int ) ;
 int get_order (int ) ;
 int usb_free_urb (int *) ;

void usb_stream_free(struct usb_stream_kernel *sk)
{
 struct usb_stream *s;
 unsigned u;

 for (u = 0; u < USB_STREAM_NURBS; ++u) {
  usb_free_urb(sk->inurb[u]);
  sk->inurb[u] = ((void*)0);
  usb_free_urb(sk->outurb[u]);
  sk->outurb[u] = ((void*)0);
 }

 s = sk->s;
 if (!s)
  return;

 free_pages((unsigned long)sk->write_page, get_order(s->write_size));
 sk->write_page = ((void*)0);
 free_pages((unsigned long)s, get_order(s->read_size));
 sk->s = ((void*)0);
}
