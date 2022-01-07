
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct observer {int dummy; } ;
typedef int observer_normal_stop_ftype ;


 struct observer* generic_observer_attach (int *,int *,void*) ;
 int normal_stop_subject ;
 int observer_normal_stop_notification_stub ;

struct observer *
observer_attach_normal_stop (observer_normal_stop_ftype *f)
{
  return generic_observer_attach (&normal_stop_subject,
      &observer_normal_stop_notification_stub,
      (void *) f);
}
