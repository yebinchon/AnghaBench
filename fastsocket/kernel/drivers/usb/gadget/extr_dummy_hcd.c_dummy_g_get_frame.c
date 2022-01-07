
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int dummy; } ;
struct timeval {int tv_usec; } ;


 int do_gettimeofday (struct timeval*) ;

__attribute__((used)) static int dummy_g_get_frame (struct usb_gadget *_gadget)
{
 struct timeval tv;

 do_gettimeofday (&tv);
 return tv.tv_usec / 1000;
}
