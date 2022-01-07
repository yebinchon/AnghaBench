
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__** inner; } ;
typedef TYPE_1__ x509_noanchor_context ;
typedef int br_x509_class ;
struct TYPE_4__ {int (* start_chain ) (TYPE_2__**,char const*) ;} ;


 int stub1 (TYPE_2__**,char const*) ;

__attribute__((used)) static void
xwc_start_chain(const br_x509_class **ctx, const char *server_name)
{
 x509_noanchor_context *xwc;

 xwc = (x509_noanchor_context *)ctx;
 (*xwc->inner)->start_chain(xwc->inner, server_name);
}
