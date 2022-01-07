
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int engine; } ;
typedef TYPE_1__ br_sslio_context ;


 int BR_SSL_RECVAPP ;
 int BR_SSL_SENDAPP ;
 int br_ssl_engine_flush (int ,int ) ;
 int run_until (TYPE_1__*,int) ;

int
br_sslio_flush(br_sslio_context *ctx)
{







 br_ssl_engine_flush(ctx->engine, 0);
 return run_until(ctx, BR_SSL_SENDAPP | BR_SSL_RECVAPP);
}
