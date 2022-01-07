
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lsrec_t ;
struct TYPE_4__ {int lsd_count; int * lsd_next; } ;
typedef TYPE_1__ lsdata_t ;
typedef int FILE ;


 int dfail (char*) ;
 scalar_t__ dtrace_aggregate_walk_keyvarsorted (int ,int ,TYPE_1__*) ;
 scalar_t__ dtrace_consume (int ,int *,int ,int *,TYPE_1__*) ;
 int g_dtp ;
 scalar_t__ g_tracing ;
 int process_aggregate ;
 int process_trace ;

__attribute__((used)) static int
process_data(FILE *out, char *data)
{
 lsdata_t lsdata;


 lsdata.lsd_next = (lsrec_t *)data;
 lsdata.lsd_count = 0;

 if (g_tracing) {
  if (dtrace_consume(g_dtp, out,
      process_trace, ((void*)0), &lsdata) != 0)
   dfail("failed to consume buffer");

  return (lsdata.lsd_count);
 }

 if (dtrace_aggregate_walk_keyvarsorted(g_dtp,
     process_aggregate, &lsdata) != 0)
  dfail("failed to walk aggregate");

 return (lsdata.lsd_count);
}
