#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct log {int /*<<< orphan*/  l_curr_block; int /*<<< orphan*/  l_curr_cycle; TYPE_2__* l_cilp; } ;
struct TYPE_4__ {TYPE_1__* xc_ctx; } ;
struct TYPE_3__ {int sequence; int /*<<< orphan*/  commit_lsn; int /*<<< orphan*/  ticket; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct log*) ; 

void
FUNC2(
	struct log	*log)
{
	if (!log->l_cilp)
		return;

	log->l_cilp->xc_ctx->ticket = FUNC1(log);
	log->l_cilp->xc_ctx->sequence = 1;
	log->l_cilp->xc_ctx->commit_lsn = FUNC0(log->l_curr_cycle,
								log->l_curr_block);
}