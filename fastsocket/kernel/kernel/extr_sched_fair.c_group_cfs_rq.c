
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_entity {int dummy; } ;
struct cfs_rq {int dummy; } ;



__attribute__((used)) static inline struct cfs_rq *group_cfs_rq(struct sched_entity *grp)
{
 return ((void*)0);
}
