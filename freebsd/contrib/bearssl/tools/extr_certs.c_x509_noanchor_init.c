
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const** inner; int * vtable; } ;
typedef TYPE_1__ x509_noanchor_context ;
typedef int br_x509_class ;


 int x509_noanchor_vtable ;

void
x509_noanchor_init(x509_noanchor_context *xwc, const br_x509_class **inner)
{
 xwc->vtable = &x509_noanchor_vtable;
 xwc->inner = inner;
}
