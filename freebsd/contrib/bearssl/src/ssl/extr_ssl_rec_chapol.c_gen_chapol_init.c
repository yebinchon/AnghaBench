
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int iv; int key; int ipoly; int ichacha; scalar_t__ seq; } ;
typedef TYPE_1__ br_sslrec_chapol_context ;
typedef int br_poly1305_run ;
typedef int br_chacha20_run ;


 int memcpy (int ,void const*,int) ;

__attribute__((used)) static void
gen_chapol_init(br_sslrec_chapol_context *cc,
 br_chacha20_run ichacha, br_poly1305_run ipoly,
 const void *key, const void *iv)
{
 cc->seq = 0;
 cc->ichacha = ichacha;
 cc->ipoly = ipoly;
 memcpy(cc->key, key, sizeof cc->key);
 memcpy(cc->iv, iv, sizeof cc->iv);
}
