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
struct file {int dummy; } ;
struct eventfd_ctx {unsigned int count; int flags; int /*<<< orphan*/  wqh; int /*<<< orphan*/  kref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ EFD_CLOEXEC ; 
 int EFD_FLAGS_SET ; 
 scalar_t__ EFD_NONBLOCK ; 
 int EFD_SHARED_FCNTL_FLAGS ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct file* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (struct file*) ; 
 scalar_t__ O_CLOEXEC ; 
 scalar_t__ O_NONBLOCK ; 
 struct file* FUNC3 (char*,int /*<<< orphan*/ *,struct eventfd_ctx*,int) ; 
 int /*<<< orphan*/  eventfd_fops ; 
 int /*<<< orphan*/  FUNC4 (struct eventfd_ctx*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct eventfd_ctx* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

struct file *FUNC8(unsigned int count, int flags)
{
	struct file *file;
	struct eventfd_ctx *ctx;

	/* Check the EFD_* constants for consistency.  */
	FUNC0(EFD_CLOEXEC != O_CLOEXEC);
	FUNC0(EFD_NONBLOCK != O_NONBLOCK);

	if (flags & ~EFD_FLAGS_SET)
		return FUNC1(-EINVAL);

	ctx = FUNC6(sizeof(*ctx), GFP_KERNEL);
	if (!ctx)
		return FUNC1(-ENOMEM);

	FUNC7(&ctx->kref);
	FUNC5(&ctx->wqh);
	ctx->count = count;
	ctx->flags = flags;

	file = FUNC3("[eventfd]", &eventfd_fops, ctx,
				  flags & EFD_SHARED_FCNTL_FLAGS);
	if (FUNC2(file))
		FUNC4(ctx);

	return file;
}