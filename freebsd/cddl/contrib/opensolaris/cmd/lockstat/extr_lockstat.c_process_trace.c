
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int lsrec_t ;
struct TYPE_5__ {scalar_t__ lsd_count; int * lsd_next; } ;
typedef TYPE_1__ lsdata_t ;
struct TYPE_6__ {int dtpda_data; TYPE_3__* dtpda_edesc; } ;
typedef TYPE_2__ dtrace_probedata_t ;
struct TYPE_7__ {int dtepd_nrecs; int dtepd_rec; } ;
typedef TYPE_3__ dtrace_eprobedesc_t ;
typedef int caddr_t ;


 int DTRACE_CONSUME_NEXT ;
 scalar_t__ g_nrecs ;
 scalar_t__ g_recsize ;
 int lsrec_fill (int *,int ,int ,int ) ;

__attribute__((used)) static int
process_trace(const dtrace_probedata_t *pdata, void *arg)
{
 lsdata_t *lsdata = arg;
 lsrec_t *lsrec = lsdata->lsd_next;
 dtrace_eprobedesc_t *edesc = pdata->dtpda_edesc;
 caddr_t data = pdata->dtpda_data;

 if (lsdata->lsd_count >= g_nrecs)
  return (DTRACE_CONSUME_NEXT);

 lsrec_fill(lsrec, edesc->dtepd_rec, edesc->dtepd_nrecs, data);

 lsdata->lsd_next = (lsrec_t *)((uintptr_t)lsrec + g_recsize);
 lsdata->lsd_count++;

 return (DTRACE_CONSUME_NEXT);
}
