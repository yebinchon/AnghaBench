
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mq_prio_max ;

void dec_prio(int *prio)
{
 if (--*prio < 0)
  *prio = mq_prio_max - 1;
}
