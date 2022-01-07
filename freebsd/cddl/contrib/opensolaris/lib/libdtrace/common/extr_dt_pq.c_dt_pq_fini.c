
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int dtrace_hdl_t ;
struct TYPE_4__ {struct TYPE_4__* dtpq_items; int * dtpq_hdl; } ;
typedef TYPE_1__ dt_pq_t ;


 int dt_free (int *,TYPE_1__*) ;

void
dt_pq_fini(dt_pq_t *p)
{
 dtrace_hdl_t *dtp = p->dtpq_hdl;

 dt_free(dtp, p->dtpq_items);
 dt_free(dtp, p);
}
