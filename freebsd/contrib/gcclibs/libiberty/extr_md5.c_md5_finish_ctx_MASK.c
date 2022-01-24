#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct md5_ctx {int buflen; int* total; int /*<<< orphan*/ * buffer; } ;
typedef  int md5_uint32 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  fillbuf ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,struct md5_ctx*) ; 
 void* FUNC2 (struct md5_ctx*,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 

void *
FUNC4 (struct md5_ctx *ctx, void *resbuf)
{
  /* Take yet unprocessed bytes into account.  */
  md5_uint32 bytes = ctx->buflen;
  size_t pad;

  /* Now count remaining bytes.  */
  ctx->total[0] += bytes;
  if (ctx->total[0] < bytes)
    ++ctx->total[1];

  pad = bytes >= 56 ? 64 + 56 - bytes : 56 - bytes;
  FUNC3 (&ctx->buffer[bytes], fillbuf, pad);

  /* Put the 64-bit file length in *bits* at the end of the buffer.  */
  *(md5_uint32 *) &ctx->buffer[bytes + pad] = FUNC0 (ctx->total[0] << 3);
  *(md5_uint32 *) &ctx->buffer[bytes + pad + 4] = FUNC0 ((ctx->total[1] << 3) |
							(ctx->total[0] >> 29));

  /* Process last bytes.  */
  FUNC1 (ctx->buffer, bytes + pad + 8, ctx);

  return FUNC2 (ctx, resbuf);
}