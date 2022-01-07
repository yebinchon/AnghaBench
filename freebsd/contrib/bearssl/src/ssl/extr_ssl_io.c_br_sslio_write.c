
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int engine; } ;
typedef TYPE_1__ br_sslio_context ;


 int BR_SSL_SENDAPP ;
 int br_ssl_engine_sendapp_ack (int ,size_t) ;
 unsigned char* br_ssl_engine_sendapp_buf (int ,size_t*) ;
 int memcpy (unsigned char*,void const*,size_t) ;
 scalar_t__ run_until (TYPE_1__*,int ) ;

int
br_sslio_write(br_sslio_context *ctx, const void *src, size_t len)
{
 unsigned char *buf;
 size_t alen;

 if (len == 0) {
  return 0;
 }
 if (run_until(ctx, BR_SSL_SENDAPP) < 0) {
  return -1;
 }
 buf = br_ssl_engine_sendapp_buf(ctx->engine, &alen);
 if (alen > len) {
  alen = len;
 }
 memcpy(buf, src, alen);
 br_ssl_engine_sendapp_ack(ctx->engine, alen);
 return (int)alen;
}
