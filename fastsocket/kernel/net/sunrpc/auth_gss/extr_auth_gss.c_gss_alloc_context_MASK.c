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
struct gss_cl_ctx {int gc_seq; int /*<<< orphan*/  count; int /*<<< orphan*/  gc_seq_lock; int /*<<< orphan*/  gc_proc; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  RPC_GSS_PROC_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 struct gss_cl_ctx* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct gss_cl_ctx *
FUNC3(void)
{
	struct gss_cl_ctx *ctx;

	ctx = FUNC1(sizeof(*ctx), GFP_NOFS);
	if (ctx != NULL) {
		ctx->gc_proc = RPC_GSS_PROC_DATA;
		ctx->gc_seq = 1;	/* NetApp 6.4R1 doesn't accept seq. no. 0 */
		FUNC2(&ctx->gc_seq_lock);
		FUNC0(&ctx->count,1);
	}
	return ctx;
}