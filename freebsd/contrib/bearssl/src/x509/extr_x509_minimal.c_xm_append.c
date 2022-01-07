
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ err; unsigned char const* hbuf; size_t hlen; int cpu; } ;
typedef TYPE_1__ br_x509_minimal_context ;
typedef int br_x509_class ;


 int br_x509_minimal_run (int *) ;

__attribute__((used)) static void
xm_append(const br_x509_class **ctx, const unsigned char *buf, size_t len)
{
 br_x509_minimal_context *cc;

 cc = (br_x509_minimal_context *)(void *)ctx;
 if (cc->err != 0) {
  return;
 }
 cc->hbuf = buf;
 cc->hlen = len;
 br_x509_minimal_run(&cc->cpu);
}
