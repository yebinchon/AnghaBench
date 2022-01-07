
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int br_x509_pkey ;
struct TYPE_2__ {unsigned int usages; int const pkey; } ;
typedef TYPE_1__ br_x509_knownkey_context ;
typedef int br_x509_class ;



__attribute__((used)) static const br_x509_pkey *
kk_get_pkey(const br_x509_class *const *ctx, unsigned *usages)
{
 const br_x509_knownkey_context *xc;

 xc = (const br_x509_knownkey_context *)ctx;
 if (usages != ((void*)0)) {
  *usages = xc->usages;
 }
 return &xc->pkey;
}
