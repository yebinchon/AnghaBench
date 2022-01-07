
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t dt_maxagg; int ** dt_aggdesc; } ;
typedef TYPE_1__ dtrace_hdl_t ;
typedef size_t dtrace_aggid_t ;
typedef int dtrace_aggdesc_t ;


 int assert (int) ;
 int dt_aggid_add (TYPE_1__*,size_t) ;

int
dt_aggid_lookup(dtrace_hdl_t *dtp, dtrace_aggid_t aggid,
    dtrace_aggdesc_t **adp)
{
 int rval;

 if (aggid >= dtp->dt_maxagg || dtp->dt_aggdesc[aggid] == ((void*)0)) {
  if ((rval = dt_aggid_add(dtp, aggid)) != 0)
   return (rval);
 }

 assert(aggid < dtp->dt_maxagg);
 assert(dtp->dt_aggdesc[aggid] != ((void*)0));
 *adp = dtp->dt_aggdesc[aggid];

 return (0);
}
