
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct red_sched_data {int flags; } ;


 int TC_RED_HARDDROP ;

__attribute__((used)) static inline int red_use_harddrop(struct red_sched_data *q)
{
 return q->flags & TC_RED_HARDDROP;
}
