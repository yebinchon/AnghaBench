
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint_t ;
struct TYPE_3__ {size_t dtpq_last; void** dtpq_items; } ;
typedef TYPE_1__ dt_pq_t ;



void *
dt_pq_walk(dt_pq_t *p, uint_t *cookie)
{
 (*cookie)++;
 if (*cookie >= p->dtpq_last)
  return (((void*)0));

 return (p->dtpq_items[*cookie]);
}
