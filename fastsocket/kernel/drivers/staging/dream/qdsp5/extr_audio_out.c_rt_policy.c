
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SCHED_FIFO ;
 int SCHED_RR ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int rt_policy(int policy)
{
 if (unlikely(policy == SCHED_FIFO) || unlikely(policy == SCHED_RR))
  return 1;
 return 0;
}
