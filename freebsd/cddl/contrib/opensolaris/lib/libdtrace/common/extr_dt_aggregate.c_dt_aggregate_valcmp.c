
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_6__ {int dtrd_action; scalar_t__ dtrd_offset; } ;
typedef TYPE_2__ dtrace_recdesc_t ;
struct TYPE_7__ {int dtagd_nrecs; TYPE_2__* dtagd_rec; } ;
typedef TYPE_3__ dtrace_aggdesc_t ;
struct TYPE_5__ {scalar_t__ dtada_data; TYPE_3__* dtada_desc; } ;
struct TYPE_8__ {TYPE_1__ dtahe_data; } ;
typedef TYPE_4__ dt_ahashent_t ;
typedef scalar_t__ caddr_t ;
 int assert (int) ;
 int dt_aggregate_averagecmp (int *,int *) ;
 int dt_aggregate_countcmp (int *,int *) ;
 int dt_aggregate_llquantizedcmp (int *,int *) ;
 int dt_aggregate_lquantizedcmp (int *,int *) ;
 int dt_aggregate_quantizedcmp (int *,int *) ;
 int dt_aggregate_stddevcmp (int *,int *) ;

__attribute__((used)) static int
dt_aggregate_valcmp(const void *lhs, const void *rhs)
{
 dt_ahashent_t *lh = *((dt_ahashent_t **)lhs);
 dt_ahashent_t *rh = *((dt_ahashent_t **)rhs);
 dtrace_aggdesc_t *lagg = lh->dtahe_data.dtada_desc;
 dtrace_aggdesc_t *ragg = rh->dtahe_data.dtada_desc;
 caddr_t ldata = lh->dtahe_data.dtada_data;
 caddr_t rdata = rh->dtahe_data.dtada_data;
 dtrace_recdesc_t *lrec, *rrec;
 int64_t *laddr, *raddr;
 int rval;

 assert(lagg->dtagd_nrecs == ragg->dtagd_nrecs);

 lrec = &lagg->dtagd_rec[lagg->dtagd_nrecs - 1];
 rrec = &ragg->dtagd_rec[ragg->dtagd_nrecs - 1];

 assert(lrec->dtrd_action == rrec->dtrd_action);

 laddr = (int64_t *)(uintptr_t)(ldata + lrec->dtrd_offset);
 raddr = (int64_t *)(uintptr_t)(rdata + rrec->dtrd_offset);

 switch (lrec->dtrd_action) {
 case 136:
  rval = dt_aggregate_averagecmp(laddr, raddr);
  break;

 case 129:
  rval = dt_aggregate_stddevcmp(laddr, raddr);
  break;

 case 130:
  rval = dt_aggregate_quantizedcmp(laddr, raddr);
  break;

 case 133:
  rval = dt_aggregate_lquantizedcmp(laddr, raddr);
  break;

 case 134:
  rval = dt_aggregate_llquantizedcmp(laddr, raddr);
  break;

 case 135:
 case 128:
 case 131:
 case 132:
  rval = dt_aggregate_countcmp(laddr, raddr);
  break;

 default:
  assert(0);
 }

 return (rval);
}
