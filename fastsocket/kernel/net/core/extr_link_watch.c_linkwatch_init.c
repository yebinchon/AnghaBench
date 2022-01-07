
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 scalar_t__ create_singlethread_workqueue (char*) ;
 scalar_t__ linkwatch_wq ;

int linkwatch_init(void)
{
 linkwatch_wq = create_singlethread_workqueue("linkwatch");
 return linkwatch_wq ? 0 : -ENOMEM;
}
