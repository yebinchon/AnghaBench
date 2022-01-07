
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_line6 {int dummy; } ;
struct usb_line6_variax {int activate_timer; int buffer_activate; int dumpreq; struct usb_line6 line6; } ;
struct usb_interface {int dummy; } ;


 int del_timer_sync (int *) ;
 int kfree (int ) ;
 int line6_cleanup_audio (struct usb_line6*) ;
 int line6_dumpreq_destruct (int *) ;
 int line6_dumpreq_destructbuf (int *,int) ;
 struct usb_line6_variax* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static void variax_destruct(struct usb_interface *interface)
{
 struct usb_line6_variax *variax = usb_get_intfdata(interface);
 struct usb_line6 *line6;

 if (variax == ((void*)0))
  return;
 line6 = &variax->line6;
 if (line6 == ((void*)0))
  return;
 line6_cleanup_audio(line6);


 line6_dumpreq_destructbuf(&variax->dumpreq, 2);
 line6_dumpreq_destructbuf(&variax->dumpreq, 1);
 line6_dumpreq_destruct(&variax->dumpreq);

 kfree(variax->buffer_activate);
 del_timer_sync(&variax->activate_timer);
}
