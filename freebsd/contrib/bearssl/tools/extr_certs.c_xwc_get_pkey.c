
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__** inner; } ;
typedef TYPE_1__ x509_noanchor_context ;
typedef int br_x509_pkey ;
typedef int br_x509_class ;
struct TYPE_4__ {int const* (* get_pkey ) (TYPE_2__**,unsigned int*) ;} ;


 int const* stub1 (TYPE_2__**,unsigned int*) ;

__attribute__((used)) static const br_x509_pkey *
xwc_get_pkey(const br_x509_class *const *ctx, unsigned *usages)
{
 x509_noanchor_context *xwc;

 xwc = (x509_noanchor_context *)ctx;
 return (*xwc->inner)->get_pkey(xwc->inner, usages);
}
