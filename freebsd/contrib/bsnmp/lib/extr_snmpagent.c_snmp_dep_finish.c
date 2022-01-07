
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snmp_context {int * dep; } ;
struct depend {int (* func ) (struct snmp_context*,int *,int ) ;int dep; } ;
struct context {int dlist; } ;


 int SNMP_DEPOP_FINISH ;
 struct depend* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct depend*,int ) ;
 int free (struct depend*) ;
 int link ;
 int stub1 (struct snmp_context*,int *,int ) ;

void
snmp_dep_finish(struct snmp_context *ctx)
{
 struct context *context = (struct context *)ctx;
 struct depend *d;

 while ((d = TAILQ_FIRST(&context->dlist)) != ((void*)0)) {
  ctx->dep = &d->dep;
  (void)d->func(ctx, ctx->dep, SNMP_DEPOP_FINISH);
  TAILQ_REMOVE(&context->dlist, d, link);
  free(d);
 }
}
