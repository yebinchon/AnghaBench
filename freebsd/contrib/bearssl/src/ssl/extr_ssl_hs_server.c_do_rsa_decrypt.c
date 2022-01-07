
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {int rng; } ;
struct TYPE_5__ {TYPE_4__ eng; int client_max_version; TYPE_2__** policy_vtable; } ;
typedef TYPE_1__ br_ssl_server_context ;
struct TYPE_6__ {int (* do_keyx ) (TYPE_2__**,unsigned char*,size_t*) ;} ;


 int br_ccopy (int,unsigned char*,unsigned char*,int) ;
 int br_enc16be (unsigned char*,int ) ;
 int br_hmac_drbg_generate (int *,unsigned char*,int) ;
 int br_ssl_engine_compute_master (TYPE_4__*,int,unsigned char*,int) ;
 int memset (unsigned char*,int ,size_t) ;
 int stub1 (TYPE_2__**,unsigned char*,size_t*) ;

__attribute__((used)) static void
do_rsa_decrypt(br_ssl_server_context *ctx, int prf_id,
 unsigned char *epms, size_t len)
{
 uint32_t x;
 unsigned char rpms[48];




 x = (*ctx->policy_vtable)->do_keyx(ctx->policy_vtable, epms, &len);
 br_enc16be(epms, ctx->client_max_version);






 br_hmac_drbg_generate(&ctx->eng.rng, rpms, sizeof rpms);
 br_ccopy(x ^ 1, epms, rpms, sizeof rpms);




 br_ssl_engine_compute_master(&ctx->eng, prf_id, epms, 48);





 memset(epms, 0, len);
}
