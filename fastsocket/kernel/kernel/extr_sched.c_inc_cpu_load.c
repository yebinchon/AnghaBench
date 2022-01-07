
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rq {int load; } ;


 int update_load_add (int *,unsigned long) ;

__attribute__((used)) static inline void inc_cpu_load(struct rq *rq, unsigned long load)
{
 update_load_add(&rq->load, load);
}
