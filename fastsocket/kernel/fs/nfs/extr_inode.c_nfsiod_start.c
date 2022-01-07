
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue_struct {int dummy; } ;


 int ENOMEM ;
 struct workqueue_struct* create_singlethread_workqueue (char*) ;
 int dprintk (char*) ;
 struct workqueue_struct* nfsiod_workqueue ;

__attribute__((used)) static int nfsiod_start(void)
{
 struct workqueue_struct *wq;
 dprintk("RPC:       creating workqueue nfsiod\n");
 wq = create_singlethread_workqueue("nfsiod");
 if (wq == ((void*)0))
  return -ENOMEM;
 nfsiod_workqueue = wq;
 return 0;
}
