
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct carlu {int stop_event_polling; int dev_list; int event_thread; } ;


 int SDL_WaitThread (int ,int*) ;
 int carlusb_cancel_rings (struct carlu*) ;
 int carlusb_free_rings (struct carlu*) ;
 int dbg (char*) ;
 int list_del (int *) ;

__attribute__((used)) static void carlusb_destroy(struct carlu *ar)
{
 int event_thread_status;

 dbg("==>release device.\n");

 ar->stop_event_polling = 1;

 carlusb_cancel_rings(ar);

 SDL_WaitThread(ar->event_thread, &event_thread_status);

 carlusb_free_rings(ar);
 list_del(&ar->dev_list);
}
