
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_rq {int rt_throttled; } ;



__attribute__((used)) static inline int rt_rq_throttled(struct rt_rq *rt_rq)
{
 return rt_rq->rt_throttled;
}
