
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* low_read ) (void*,unsigned char*,size_t) ;int (* low_write ) (void*,unsigned char const*,size_t) ;void* write_context; void* read_context; int * engine; } ;
typedef TYPE_1__ br_sslio_context ;
typedef int br_ssl_engine_context ;



void
br_sslio_init(br_sslio_context *ctx,
 br_ssl_engine_context *engine,
 int (*low_read)(void *read_context,
  unsigned char *data, size_t len),
 void *read_context,
 int (*low_write)(void *write_context,
  const unsigned char *data, size_t len),
 void *write_context)
{
 ctx->engine = engine;
 ctx->low_read = low_read;
 ctx->read_context = read_context;
 ctx->low_write = low_write;
 ctx->write_context = write_context;
}
