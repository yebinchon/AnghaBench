
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t id_t ;
struct TYPE_3__ {size_t dt_xlatorid; int ** dt_xlatormap; } ;
typedef TYPE_1__ dtrace_hdl_t ;
typedef int dt_xlator_t ;


 int assert (int) ;

dt_xlator_t *
dt_xlator_lookup_id(dtrace_hdl_t *dtp, id_t id)
{
 assert(id >= 0 && id < dtp->dt_xlatorid);
 return (dtp->dt_xlatormap[id]);
}
