
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mq_prio_max ;
 int random () ;

void random_prio(int *prio)
{
 *prio = random() % mq_prio_max;
}
