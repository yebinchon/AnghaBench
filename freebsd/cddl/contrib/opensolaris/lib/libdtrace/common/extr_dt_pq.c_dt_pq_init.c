
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint_t ;
typedef int dtrace_hdl_t ;
typedef int dt_pq_value_f ;
struct TYPE_4__ {int dtpq_size; int dtpq_last; void* dtpq_arg; int dtpq_value; int * dtpq_hdl; int * dtpq_items; } ;
typedef TYPE_1__ dt_pq_t ;


 int assert (int) ;
 int dt_free (int *,TYPE_1__*) ;
 void* dt_zalloc (int *,int) ;

dt_pq_t *
dt_pq_init(dtrace_hdl_t *dtp, uint_t size, dt_pq_value_f value_cb, void *cb_arg)
{
 dt_pq_t *p;
 assert(size > 1);

 if ((p = dt_zalloc(dtp, sizeof (dt_pq_t))) == ((void*)0))
  return (((void*)0));

 p->dtpq_items = dt_zalloc(dtp, size * sizeof (p->dtpq_items[0]));
 if (p->dtpq_items == ((void*)0)) {
  dt_free(dtp, p);
  return (((void*)0));
 }

 p->dtpq_hdl = dtp;
 p->dtpq_size = size;
 p->dtpq_last = 1;
 p->dtpq_value = value_cb;
 p->dtpq_arg = cb_arg;

 return (p);
}
