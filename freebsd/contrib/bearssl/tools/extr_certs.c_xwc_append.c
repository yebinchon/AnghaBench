
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__** inner; } ;
typedef TYPE_1__ x509_noanchor_context ;
typedef int br_x509_class ;
struct TYPE_4__ {int (* append ) (TYPE_2__**,unsigned char const*,size_t) ;} ;


 int stub1 (TYPE_2__**,unsigned char const*,size_t) ;

__attribute__((used)) static void
xwc_append(const br_x509_class **ctx, const unsigned char *buf, size_t len)
{
 x509_noanchor_context *xwc;

 xwc = (x509_noanchor_context *)ctx;
 (*xwc->inner)->append(xwc->inner, buf, len);
}
