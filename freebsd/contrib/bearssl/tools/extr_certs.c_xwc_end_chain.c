
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__** inner; } ;
typedef TYPE_1__ x509_noanchor_context ;
typedef int br_x509_class ;
struct TYPE_4__ {unsigned int (* end_chain ) (TYPE_2__**) ;} ;


 unsigned int BR_ERR_X509_NOT_TRUSTED ;
 unsigned int stub1 (TYPE_2__**) ;

__attribute__((used)) static unsigned
xwc_end_chain(const br_x509_class **ctx)
{
 x509_noanchor_context *xwc;
 unsigned r;

 xwc = (x509_noanchor_context *)ctx;
 r = (*xwc->inner)->end_chain(xwc->inner);
 if (r == BR_ERR_X509_NOT_TRUSTED) {
  r = 0;
 }
 return r;
}
