
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mnt_namespace {scalar_t__ event; int poll; } ;


 scalar_t__ event ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void __touch_mnt_namespace(struct mnt_namespace *ns)
{
 if (ns && ns->event != event) {
  ns->event = event;
  wake_up_interruptible(&ns->poll);
 }
}
