
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint_t ;
struct TYPE_4__ {scalar_t__ dtpq_last; scalar_t__ dtpq_size; void** dtpq_items; } ;
typedef TYPE_1__ dt_pq_t ;


 int assert (int) ;
 scalar_t__ dt_pq_getvalue (TYPE_1__*,size_t) ;

void
dt_pq_insert(dt_pq_t *p, void *item)
{
 uint_t i;

 assert(p->dtpq_last < p->dtpq_size);

 i = p->dtpq_last++;
 p->dtpq_items[i] = item;

 while (i > 1 && dt_pq_getvalue(p, i) < dt_pq_getvalue(p, i / 2)) {
  void *tmp = p->dtpq_items[i];
  p->dtpq_items[i] = p->dtpq_items[i / 2];
  p->dtpq_items[i / 2] = tmp;
  i /= 2;
 }
}
