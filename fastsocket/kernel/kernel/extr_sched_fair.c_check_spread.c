
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_entity {int vruntime; } ;
struct cfs_rq {int min_vruntime; } ;
typedef int s64 ;


 int nr_spread_over ;
 int schedstat_inc (struct cfs_rq*,int ) ;
 int sysctl_sched_latency ;

__attribute__((used)) static void check_spread(struct cfs_rq *cfs_rq, struct sched_entity *se)
{
}
