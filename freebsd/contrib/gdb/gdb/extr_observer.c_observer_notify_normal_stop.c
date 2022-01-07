
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int generic_observer_notify (int ,int *) ;
 int normal_stop_subject ;

void
observer_notify_normal_stop (void)
{
  generic_observer_notify (normal_stop_subject, ((void*)0));
}
