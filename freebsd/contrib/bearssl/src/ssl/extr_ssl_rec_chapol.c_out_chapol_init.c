
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * out; } ;
struct TYPE_6__ {TYPE_1__ vtable; } ;
typedef TYPE_2__ br_sslrec_chapol_context ;
typedef int br_poly1305_run ;
typedef int br_chacha20_run ;


 int br_sslrec_out_chapol_vtable ;
 int gen_chapol_init (TYPE_2__*,int ,int ,void const*,void const*) ;

__attribute__((used)) static void
out_chapol_init(br_sslrec_chapol_context *cc,
 br_chacha20_run ichacha, br_poly1305_run ipoly,
 const void *key, const void *iv)
{
 cc->vtable.out = &br_sslrec_out_chapol_vtable;
 gen_chapol_init(cc, ichacha, ipoly, key, iv);
}
