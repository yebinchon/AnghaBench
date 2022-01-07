
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int engine; } ;
typedef TYPE_1__ br_sslio_context ;


 scalar_t__ BR_ERR_OK ;
 scalar_t__ BR_SSL_CLOSED ;
 int BR_SSL_RECVAPP ;
 int br_ssl_engine_close (int ) ;
 scalar_t__ br_ssl_engine_current_state (int ) ;
 scalar_t__ br_ssl_engine_last_error (int ) ;
 int br_ssl_engine_recvapp_ack (int ,size_t) ;
 int * br_ssl_engine_recvapp_buf (int ,size_t*) ;
 int run_until (TYPE_1__*,int ) ;

int
br_sslio_close(br_sslio_context *ctx)
{
 br_ssl_engine_close(ctx->engine);
 while (br_ssl_engine_current_state(ctx->engine) != BR_SSL_CLOSED) {



  size_t len;

  run_until(ctx, BR_SSL_RECVAPP);
  if (br_ssl_engine_recvapp_buf(ctx->engine, &len) != ((void*)0)) {
   br_ssl_engine_recvapp_ack(ctx->engine, len);
  }
 }
 return br_ssl_engine_last_error(ctx->engine) == BR_ERR_OK;
}
