
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint_t ;
struct TYPE_6__ {int dtrd_action; scalar_t__ dtrd_offset; int dtrd_uarg; } ;
typedef TYPE_1__ dtrace_recdesc_t ;
struct TYPE_7__ {scalar_t__ dtpda_data; TYPE_3__* dtpda_edesc; } ;
typedef TYPE_2__ dtrace_probedata_t ;
struct TYPE_8__ {int dtepd_nrecs; } ;
typedef TYPE_3__ dtrace_eprobedesc_t ;
typedef int dtrace_aggvarid_t ;
typedef scalar_t__ caddr_t ;




 int DTRACE_CONSUME_NEXT ;
 int DTRACE_CONSUME_THIS ;
 int dfatal (char*) ;
 int dtrace_aggregate_walk_joined (int ,int *,int,int ,int *) ;
 int g_dtp ;
 int g_opt_s ;
 int print_bar () ;
 int print_legend () ;
 int printf (char*,char*) ;
 int process_aggregate ;

__attribute__((used)) static int
chewrec(const dtrace_probedata_t *data, const dtrace_recdesc_t *rec, void *arg)
{
 dtrace_eprobedesc_t *epd = data->dtpda_edesc;
 dtrace_aggvarid_t aggvars[2];
 const void *buf;
 int i, nagv;




 if (rec == ((void*)0))
  return (DTRACE_CONSUME_NEXT);

 buf = data->dtpda_data - rec->dtrd_offset;

 switch (rec->dtrd_action) {
 case 129:
  (void) printf("\n%s\n\n", (char *)buf + rec->dtrd_offset);
  if (!g_opt_s) {
   print_legend();
   print_bar();
  }
  return (DTRACE_CONSUME_NEXT);

 case 128:
  for (nagv = 0, i = 0; i < epd->dtepd_nrecs - 1; i++) {
   const dtrace_recdesc_t *nrec = &rec[i];

   if (nrec->dtrd_uarg != rec->dtrd_uarg)
    break;


   aggvars[nagv++] = *(dtrace_aggvarid_t *)((caddr_t)buf +
       nrec->dtrd_offset);
  }

  if (nagv == (g_opt_s ? 1 : 2)) {
   uint_t nent = 0;
   if (dtrace_aggregate_walk_joined(g_dtp, aggvars, nagv,
       process_aggregate, &nent) != 0)
    dfatal("failed to walk aggregate");
  }

  return (DTRACE_CONSUME_NEXT);
 }

 return (DTRACE_CONSUME_THIS);
}
