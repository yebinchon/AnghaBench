
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int destroy_workqueue (int ) ;
 int recv_workqueue ;
 int send_workqueue ;

__attribute__((used)) static void work_stop(void)
{
 destroy_workqueue(recv_workqueue);
 destroy_workqueue(send_workqueue);
}
