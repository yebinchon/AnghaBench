
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ err; scalar_t__ cert_length; int num_certs; } ;
typedef TYPE_1__ br_x509_minimal_context ;
typedef int br_x509_class ;


 scalar_t__ BR_ERR_X509_TRUNCATED ;

__attribute__((used)) static void
xm_end_cert(const br_x509_class **ctx)
{
 br_x509_minimal_context *cc;

 cc = (br_x509_minimal_context *)(void *)ctx;
 if (cc->err == 0 && cc->cert_length != 0) {
  cc->err = BR_ERR_X509_TRUNCATED;
 }
 cc->num_certs ++;
}
