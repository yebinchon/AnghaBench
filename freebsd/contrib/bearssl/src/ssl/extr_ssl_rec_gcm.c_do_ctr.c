
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* vtable; } ;
struct TYPE_7__ {void const* iv; TYPE_1__ bc; } ;
typedef TYPE_2__ br_sslrec_gcm_context ;
struct TYPE_8__ {int (* run ) (TYPE_3__**,unsigned char*,int,void*,int) ;} ;


 int memcpy (unsigned char*,void const*,int) ;
 int stub1 (TYPE_3__**,unsigned char*,int,void*,size_t) ;
 int stub2 (TYPE_3__**,unsigned char*,int,void*,int) ;

__attribute__((used)) static void
do_ctr(br_sslrec_gcm_context *cc, const void *nonce, void *data, size_t len,
 void *xortag)
{
 unsigned char iv[12];

 memcpy(iv, cc->iv, 4);
 memcpy(iv + 4, nonce, 8);
 cc->bc.vtable->run(&cc->bc.vtable, iv, 2, data, len);
 cc->bc.vtable->run(&cc->bc.vtable, iv, 1, xortag, 16);
}
