
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct md5_ctx {int buflen; int* total; int * buffer; } ;
typedef int md5_uint32 ;


 int SWAP (int) ;
 int fillbuf ;
 int md5_process_block (int *,int,struct md5_ctx*) ;
 void* md5_read_ctx (struct md5_ctx*,void*) ;
 int memcpy (int *,int ,size_t) ;

void *
md5_finish_ctx (struct md5_ctx *ctx, void *resbuf)
{

  md5_uint32 bytes = ctx->buflen;
  size_t pad;


  ctx->total[0] += bytes;
  if (ctx->total[0] < bytes)
    ++ctx->total[1];

  pad = bytes >= 56 ? 64 + 56 - bytes : 56 - bytes;
  memcpy (&ctx->buffer[bytes], fillbuf, pad);


  *(md5_uint32 *) &ctx->buffer[bytes + pad] = SWAP (ctx->total[0] << 3);
  *(md5_uint32 *) &ctx->buffer[bytes + pad + 4] = SWAP ((ctx->total[1] << 3) |
       (ctx->total[0] >> 29));


  md5_process_block (ctx->buffer, bytes + pad + 8, ctx);

  return md5_read_ctx (ctx, resbuf);
}
