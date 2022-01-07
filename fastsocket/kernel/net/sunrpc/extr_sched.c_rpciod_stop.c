
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue_struct {int dummy; } ;


 int destroy_workqueue (struct workqueue_struct*) ;
 int dprintk (char*) ;
 struct workqueue_struct* rpciod_workqueue ;

__attribute__((used)) static void rpciod_stop(void)
{
 struct workqueue_struct *wq = ((void*)0);

 if (rpciod_workqueue == ((void*)0))
  return;
 dprintk("RPC:       destroying workqueue rpciod\n");

 wq = rpciod_workqueue;
 rpciod_workqueue = ((void*)0);
 destroy_workqueue(wq);
}
