
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct carlu {int ctx; int stop_event_polling; } ;


 int dbg (char*) ;
 int libusb_handle_events (int ) ;

__attribute__((used)) static int carlusb_event_thread(void *_ar)
{
 struct carlu *ar = (void *)_ar;
 dbg("event thread active and polling.\n");

 while (!ar->stop_event_polling)
  libusb_handle_events(ar->ctx);

 dbg("==> event thread desixed.\n");
 return 0;
}
