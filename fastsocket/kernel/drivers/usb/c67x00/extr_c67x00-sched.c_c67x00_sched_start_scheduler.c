
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c67x00_hcd {int tasklet; } ;


 int c67x00_sched_tasklet ;
 int tasklet_init (int *,int ,unsigned long) ;

int c67x00_sched_start_scheduler(struct c67x00_hcd *c67x00)
{
 tasklet_init(&c67x00->tasklet, c67x00_sched_tasklet,
       (unsigned long)c67x00);
 return 0;
}
