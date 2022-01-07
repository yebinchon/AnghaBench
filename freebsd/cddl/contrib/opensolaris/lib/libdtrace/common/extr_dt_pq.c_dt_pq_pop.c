
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_4__ {int dtpq_last; int ** dtpq_items; } ;
typedef TYPE_1__ dt_pq_t ;


 int assert (int) ;
 scalar_t__ dt_pq_getvalue (TYPE_1__*,int) ;

void *
dt_pq_pop(dt_pq_t *p)
{
 uint_t i = 1;
 void *ret;

 assert(p->dtpq_last > 0);

 if (p->dtpq_last == 1)
  return (((void*)0));

 ret = p->dtpq_items[1];

 p->dtpq_last--;
 p->dtpq_items[1] = p->dtpq_items[p->dtpq_last];
 p->dtpq_items[p->dtpq_last] = ((void*)0);

 for (;;) {
  uint_t lc = i * 2;
  uint_t rc = i * 2 + 1;
  uint_t c;
  uint64_t v;
  void *tmp;

  if (lc >= p->dtpq_last)
   break;

  if (rc >= p->dtpq_last) {
   c = lc;
   v = dt_pq_getvalue(p, lc);
  } else {
   uint64_t lv = dt_pq_getvalue(p, lc);
   uint64_t rv = dt_pq_getvalue(p, rc);

   if (lv < rv) {
    c = lc;
    v = lv;
   } else {
    c = rc;
    v = rv;
   }
  }

  if (v >= dt_pq_getvalue(p, i))
   break;

  tmp = p->dtpq_items[i];
  p->dtpq_items[i] = p->dtpq_items[c];
  p->dtpq_items[c] = tmp;

  i = c;
 }

 return (ret);
}
