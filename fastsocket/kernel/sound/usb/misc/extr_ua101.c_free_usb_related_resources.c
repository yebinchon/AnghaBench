
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct ua101 {int mutex; struct usb_interface** intf; int playback; int capture; } ;


 unsigned int ARRAY_SIZE (struct usb_interface**) ;
 int free_stream_buffers (struct ua101*,int *) ;
 int free_stream_urbs (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ua101_driver ;
 int usb_driver_release_interface (int *,struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void free_usb_related_resources(struct ua101 *ua,
           struct usb_interface *interface)
{
 unsigned int i;
 struct usb_interface *intf;

 mutex_lock(&ua->mutex);
 free_stream_urbs(&ua->capture);
 free_stream_urbs(&ua->playback);
 mutex_unlock(&ua->mutex);
 free_stream_buffers(ua, &ua->capture);
 free_stream_buffers(ua, &ua->playback);

 for (i = 0; i < ARRAY_SIZE(ua->intf); ++i) {
  mutex_lock(&ua->mutex);
  intf = ua->intf[i];
  ua->intf[i] = ((void*)0);
  mutex_unlock(&ua->mutex);
  if (intf) {
   usb_set_intfdata(intf, ((void*)0));
   if (intf != interface)
    usb_driver_release_interface(&ua101_driver,
            intf);
  }
 }
}
