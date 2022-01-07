
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue_struct {int dummy; } ;


 struct workqueue_struct* create_workqueue (char*) ;
 int dprintk (char*) ;
 struct workqueue_struct* rpciod_workqueue ;

__attribute__((used)) static int rpciod_start(void)
{
 struct workqueue_struct *wq;




 dprintk("RPC:       creating workqueue rpciod\n");
 wq = create_workqueue("rpciod");
 rpciod_workqueue = wq;
 return rpciod_workqueue != ((void*)0);
}
