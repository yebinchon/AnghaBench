
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int br_x509_pkey ;
struct TYPE_2__ {scalar_t__ err; unsigned int key_usages; int const pkey; } ;
typedef TYPE_1__ br_x509_minimal_context ;
typedef int br_x509_class ;


 scalar_t__ BR_ERR_X509_NOT_TRUSTED ;
 scalar_t__ BR_ERR_X509_OK ;

__attribute__((used)) static const br_x509_pkey *
xm_get_pkey(const br_x509_class *const *ctx, unsigned *usages)
{
 br_x509_minimal_context *cc;

 cc = (br_x509_minimal_context *)(void *)ctx;
 if (cc->err == BR_ERR_X509_OK
  || cc->err == BR_ERR_X509_NOT_TRUSTED)
 {
  if (usages != ((void*)0)) {
   *usages = cc->key_usages;
  }
  return &((br_x509_minimal_context *)(void *)ctx)->pkey;
 } else {
  return ((void*)0);
 }
}
