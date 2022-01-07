
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* observer_normal_stop_ftype ) () ;


 int stub1 () ;

__attribute__((used)) static void
observer_normal_stop_notification_stub (const void *data,
     const void *unused_args)
{
  observer_normal_stop_ftype *notify = (observer_normal_stop_ftype *) data;
  (*notify) ();
}
