
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cgroup_queue_work (int *) ;
 int rebuild_sched_domains_work ;

__attribute__((used)) static void async_rebuild_sched_domains(void)
{
 cgroup_queue_work(&rebuild_sched_domains_work);
}
