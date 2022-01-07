
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flush_workqueue (int ) ;
 int keventd_wq ;

void flush_scheduled_work(void)
{
 flush_workqueue(keventd_wq);
}
