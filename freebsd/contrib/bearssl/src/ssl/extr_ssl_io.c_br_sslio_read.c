
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int engine; } ;
typedef TYPE_1__ br_sslio_context ;


 int BR_SSL_RECVAPP ;
 int br_ssl_engine_recvapp_ack (int ,size_t) ;
 unsigned char* br_ssl_engine_recvapp_buf (int ,size_t*) ;
 int memcpy (void*,unsigned char*,size_t) ;
 scalar_t__ run_until (TYPE_1__*,int ) ;

int
br_sslio_read(br_sslio_context *ctx, void *dst, size_t len)
{
 unsigned char *buf;
 size_t alen;

 if (len == 0) {
  return 0;
 }
 if (run_until(ctx, BR_SSL_RECVAPP) < 0) {
  return -1;
 }
 buf = br_ssl_engine_recvapp_buf(ctx->engine, &alen);
 if (alen > len) {
  alen = len;
 }
 memcpy(dst, buf, alen);
 br_ssl_engine_recvapp_ack(ctx->engine, alen);
 return (int)alen;
}
