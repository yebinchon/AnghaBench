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
struct md5_ctx {int /*<<< orphan*/  D; int /*<<< orphan*/  C; int /*<<< orphan*/  B; int /*<<< orphan*/  A; } ;
typedef  int /*<<< orphan*/  md5_uint32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

void *
FUNC1 (const struct md5_ctx *ctx, void *resbuf)
{
  ((md5_uint32 *) resbuf)[0] = FUNC0 (ctx->A);
  ((md5_uint32 *) resbuf)[1] = FUNC0 (ctx->B);
  ((md5_uint32 *) resbuf)[2] = FUNC0 (ctx->C);
  ((md5_uint32 *) resbuf)[3] = FUNC0 (ctx->D);

  return resbuf;
}