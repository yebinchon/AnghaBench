
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbip_task {int thread_done; } ;
struct usbip_device {struct usbip_task eh; } ;


 int usbip_dbg_eh (char*) ;
 int wait_for_completion (int *) ;

void usbip_stop_eh(struct usbip_device *ud)
{
 struct usbip_task *eh = &ud->eh;

 wait_for_completion(&eh->thread_done);
 usbip_dbg_eh("usbip_eh has finished\n");
}
