
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct observer {int dummy; } ;


 int generic_observer_detach (int *,struct observer*) ;
 int normal_stop_subject ;

void
observer_detach_normal_stop (struct observer *observer)
{
  generic_observer_detach (&normal_stop_subject, observer);
}
