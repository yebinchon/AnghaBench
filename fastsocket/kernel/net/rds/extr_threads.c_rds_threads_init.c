
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int create_singlethread_workqueue (char*) ;
 int rds_wq ;

int rds_threads_init(void)
{
 rds_wq = create_singlethread_workqueue("krdsd");
 if (!rds_wq)
  return -ENOMEM;

 return 0;
}
