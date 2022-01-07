
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mq_prio_max ;

void inc_prio(int *prio)
{
 if (++*prio == mq_prio_max)
  *prio = 0;
}
