
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_line6 {int dummy; } ;
struct usb_line6_toneport {struct usb_line6 line6; } ;
struct usb_interface {int dummy; } ;


 int line6_cleanup_audio (struct usb_line6*) ;
 struct usb_line6_toneport* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static void toneport_destruct(struct usb_interface *interface)
{
 struct usb_line6_toneport *toneport = usb_get_intfdata(interface);
 struct usb_line6 *line6;

 if (toneport == ((void*)0))
  return;
 line6 = &toneport->line6;
 if (line6 == ((void*)0))
  return;
 line6_cleanup_audio(line6);
}
