
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_workqueue_stats {int kref; } ;


 int cpu_workqueue_stat_free ;
 int kref_put (int *,int ) ;

__attribute__((used)) static void workqueue_stat_release(void *stat)
{
 struct cpu_workqueue_stats *node = stat;

 kref_put(&node->kref, cpu_workqueue_stat_free);
}
