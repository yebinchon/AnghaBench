
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__** inner; } ;
typedef TYPE_1__ x509_noanchor_context ;
typedef int br_x509_class ;
struct TYPE_4__ {int (* end_cert ) (TYPE_2__**) ;} ;


 int stub1 (TYPE_2__**) ;

__attribute__((used)) static void
xwc_end_cert(const br_x509_class **ctx)
{
 x509_noanchor_context *xwc;

 xwc = (x509_noanchor_context *)ctx;
 (*xwc->inner)->end_cert(xwc->inner);
}
