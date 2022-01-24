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
struct timerfd_ctx {int /*<<< orphan*/  rcu; int /*<<< orphan*/  tmr; } ;
struct inode {int dummy; } ;
struct file {struct timerfd_ctx* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  timerfd_ctx_rcu_free ; 
 int /*<<< orphan*/  FUNC2 (struct timerfd_ctx*) ; 

__attribute__((used)) static int FUNC3(struct inode *inode, struct file *file)
{
	struct timerfd_ctx *ctx = file->private_data;

	FUNC2(ctx);
	FUNC1(&ctx->tmr);
	FUNC0(&ctx->rcu, timerfd_ctx_rcu_free);
	return 0;
}