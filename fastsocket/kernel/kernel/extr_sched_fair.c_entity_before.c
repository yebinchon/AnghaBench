
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_entity {scalar_t__ vruntime; } ;
typedef scalar_t__ s64 ;



__attribute__((used)) static inline int entity_before(struct sched_entity *a,
    struct sched_entity *b)
{
 return (s64)(a->vruntime - b->vruntime) < 0;
}
