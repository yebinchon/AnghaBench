
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ verbose; } ;
typedef TYPE_1__ ccert_context ;
typedef int br_ssl_client_certificate_class ;


 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void
cc_end_name_list(const br_ssl_client_certificate_class **pctx)
{
 ccert_context *zc;

 zc = (ccert_context *)pctx;
 if (zc->verbose) {
  fprintf(stderr, "--- anchor DN list end ---\n");
 }
}
