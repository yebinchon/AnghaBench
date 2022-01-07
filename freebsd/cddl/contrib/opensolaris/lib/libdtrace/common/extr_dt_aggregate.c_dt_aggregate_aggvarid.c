
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ dtrd_offset; } ;
typedef TYPE_2__ dtrace_recdesc_t ;
typedef scalar_t__ dtrace_aggvarid_t ;
struct TYPE_8__ {scalar_t__ dtagd_varid; TYPE_2__* dtagd_rec; } ;
typedef TYPE_3__ dtrace_aggdesc_t ;
struct TYPE_6__ {scalar_t__ dtada_data; TYPE_3__* dtada_desc; } ;
struct TYPE_9__ {TYPE_1__ dtahe_data; } ;
typedef TYPE_4__ dt_ahashent_t ;
typedef scalar_t__ caddr_t ;


 scalar_t__ DTRACE_AGGVARIDNONE ;

__attribute__((used)) static dtrace_aggvarid_t
dt_aggregate_aggvarid(dt_ahashent_t *ent)
{
 dtrace_aggdesc_t *agg = ent->dtahe_data.dtada_desc;
 caddr_t data = ent->dtahe_data.dtada_data;
 dtrace_recdesc_t *rec = agg->dtagd_rec;






 if (agg->dtagd_varid != DTRACE_AGGVARIDNONE)
  return (agg->dtagd_varid);

 agg->dtagd_varid = *((dtrace_aggvarid_t *)(uintptr_t)(data +
     rec->dtrd_offset));

 return (agg->dtagd_varid);
}
