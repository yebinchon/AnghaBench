
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int vtable; } ;
struct TYPE_7__ {unsigned char* h; TYPE_1__ bc; int iv; int gh; scalar_t__ seq; } ;
typedef TYPE_2__ br_sslrec_gcm_context ;
typedef int br_ghash ;
struct TYPE_8__ {int (* run ) (int *,unsigned char*,int ,unsigned char*,int) ;int (* init ) (int *,void const*,size_t) ;} ;
typedef TYPE_3__ br_block_ctr_class ;


 int memcpy (int ,void const*,int) ;
 int memset (unsigned char*,int ,int) ;
 int stub1 (int *,void const*,size_t) ;
 int stub2 (int *,unsigned char*,int ,unsigned char*,int) ;

__attribute__((used)) static void
gen_gcm_init(br_sslrec_gcm_context *cc,
 const br_block_ctr_class *bc_impl,
 const void *key, size_t key_len,
 br_ghash gh_impl,
 const void *iv)
{
 unsigned char tmp[12];

 cc->seq = 0;
 bc_impl->init(&cc->bc.vtable, key, key_len);
 cc->gh = gh_impl;
 memcpy(cc->iv, iv, sizeof cc->iv);
 memset(cc->h, 0, sizeof cc->h);
 memset(tmp, 0, sizeof tmp);
 bc_impl->run(&cc->bc.vtable, tmp, 0, cc->h, sizeof cc->h);
}
