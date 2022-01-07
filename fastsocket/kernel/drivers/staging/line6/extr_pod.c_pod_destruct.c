
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_line6 {int dummy; } ;
struct usb_line6_pod {int buffer_versionreq; int dumpreq; struct usb_line6 line6; } ;
struct usb_interface {int dummy; } ;


 int kfree (int ) ;
 int line6_cleanup_audio (struct usb_line6*) ;
 int line6_dumpreq_destruct (int *) ;
 struct usb_line6_pod* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static void pod_destruct(struct usb_interface *interface)
{
 struct usb_line6_pod *pod = usb_get_intfdata(interface);
 struct usb_line6 *line6;

 if (pod == ((void*)0))
  return;
 line6 = &pod->line6;
 if (line6 == ((void*)0))
  return;
 line6_cleanup_audio(line6);


 line6_dumpreq_destruct(&pod->dumpreq);

 kfree(pod->buffer_versionreq);
}
