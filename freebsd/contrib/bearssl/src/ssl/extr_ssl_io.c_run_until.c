
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int (* low_write ) (int ,unsigned char*,size_t) ;int (* low_read ) (int ,unsigned char*,size_t) ;TYPE_3__* engine; int read_context; int write_context; } ;
typedef TYPE_1__ br_sslio_context ;
struct TYPE_11__ {int shutdown_recv; } ;


 int BR_ERR_IO ;
 unsigned int BR_SSL_CLOSED ;
 unsigned int BR_SSL_RECVAPP ;
 unsigned int BR_SSL_RECVREC ;
 unsigned int BR_SSL_SENDREC ;
 unsigned int br_ssl_engine_current_state (TYPE_3__*) ;
 int br_ssl_engine_fail (TYPE_3__*,int ) ;
 int br_ssl_engine_flush (TYPE_3__*,int ) ;
 int br_ssl_engine_recvrec_ack (TYPE_3__*,int) ;
 unsigned char* br_ssl_engine_recvrec_buf (TYPE_3__*,size_t*) ;
 int br_ssl_engine_sendrec_ack (TYPE_3__*,int) ;
 unsigned char* br_ssl_engine_sendrec_buf (TYPE_3__*,size_t*) ;
 int stub1 (int ,unsigned char*,size_t) ;
 int stub2 (int ,unsigned char*,size_t) ;

__attribute__((used)) static int
run_until(br_sslio_context *ctx, unsigned target)
{
 for (;;) {
  unsigned state;

  state = br_ssl_engine_current_state(ctx->engine);
  if (state & BR_SSL_CLOSED) {
   return -1;
  }





  if (state & BR_SSL_SENDREC) {
   unsigned char *buf;
   size_t len;
   int wlen;

   buf = br_ssl_engine_sendrec_buf(ctx->engine, &len);
   wlen = ctx->low_write(ctx->write_context, buf, len);
   if (wlen < 0) {







    if (!ctx->engine->shutdown_recv) {
     br_ssl_engine_fail(
      ctx->engine, BR_ERR_IO);
    }
    return -1;
   }
   if (wlen > 0) {
    br_ssl_engine_sendrec_ack(ctx->engine, wlen);
   }
   continue;
  }




  if (state & target) {
   return 0;
  }
  if (state & BR_SSL_RECVAPP) {
   return -1;
  }






  if (state & BR_SSL_RECVREC) {
   unsigned char *buf;
   size_t len;
   int rlen;

   buf = br_ssl_engine_recvrec_buf(ctx->engine, &len);
   rlen = ctx->low_read(ctx->read_context, buf, len);
   if (rlen < 0) {
    br_ssl_engine_fail(ctx->engine, BR_ERR_IO);
    return -1;
   }
   if (rlen > 0) {
    br_ssl_engine_recvrec_ack(ctx->engine, rlen);
   }
   continue;
  }
  br_ssl_engine_flush(ctx->engine, 0);
 }
}
