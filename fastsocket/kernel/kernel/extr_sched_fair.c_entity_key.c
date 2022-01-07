
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_entity {scalar_t__ vruntime; } ;
struct cfs_rq {scalar_t__ min_vruntime; } ;
typedef scalar_t__ s64 ;



__attribute__((used)) static inline s64 entity_key(struct cfs_rq *cfs_rq, struct sched_entity *se)
{
 return se->vruntime - cfs_rq->min_vruntime;
}
