
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omapfb_device {int * fb_info; } ;


 int OMAPFB_PLANE_NUM ;
 int blocking_notifier_call_chain (int *,unsigned long,int ) ;
 int notifier_inited ;
 int * omapfb_client_list ;

void omapfb_notify_clients(struct omapfb_device *fbdev, unsigned long event)
{
 int i;

 if (!notifier_inited)

  return;

 for (i = 0; i < OMAPFB_PLANE_NUM; i++)
  blocking_notifier_call_chain(&omapfb_client_list[i], event,
        fbdev->fb_info[i]);
}
