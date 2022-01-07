
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int rng; } ;
struct TYPE_4__ {TYPE_3__ eng; } ;
typedef TYPE_1__ br_ssl_server_context ;


 int br_ccopy (int,unsigned char*,unsigned char*,size_t) ;
 int br_hmac_drbg_generate (int *,unsigned char*,size_t) ;
 int br_ssl_engine_compute_master (TYPE_3__*,int,unsigned char*,size_t) ;
 int memset (unsigned char*,int ,size_t) ;

__attribute__((used)) static void
ecdh_common(br_ssl_server_context *ctx, int prf_id,
 unsigned char *xcoor, size_t xcoor_len, uint32_t ctl)
{
 unsigned char rpms[80];

 if (xcoor_len > sizeof rpms) {
  xcoor_len = sizeof rpms;
  ctl = 0;
 }






 br_hmac_drbg_generate(&ctx->eng.rng, rpms, xcoor_len);
 br_ccopy(ctl ^ 1, xcoor, rpms, xcoor_len);




 br_ssl_engine_compute_master(&ctx->eng, prf_id, xcoor, xcoor_len);





 memset(xcoor, 0, xcoor_len);
}
