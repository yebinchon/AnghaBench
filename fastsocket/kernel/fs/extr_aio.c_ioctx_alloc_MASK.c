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
struct mm_struct {int /*<<< orphan*/  ioctx_lock; int /*<<< orphan*/  ioctx_list; int /*<<< orphan*/  mm_count; } ;
struct TYPE_3__ {int /*<<< orphan*/  nr; int /*<<< orphan*/  ring_lock; } ;
struct kioctx {unsigned int max_reqs; TYPE_1__ ring_info; int /*<<< orphan*/  user_id; int /*<<< orphan*/  list; int /*<<< orphan*/  wq; int /*<<< orphan*/  run_list; int /*<<< orphan*/  active_reqs; int /*<<< orphan*/  wait; int /*<<< orphan*/  ctx_lock; int /*<<< orphan*/  users; struct mm_struct* mm; } ;
struct kiocb {int dummy; } ;
struct io_event {int dummy; } ;
struct TYPE_4__ {struct mm_struct* mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct kioctx* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct kioctx*) ; 
 int /*<<< orphan*/  aio_kick_handler ; 
 unsigned long aio_max_nr ; 
 unsigned int aio_nr ; 
 int /*<<< orphan*/  aio_nr_lock ; 
 scalar_t__ FUNC4 (struct kioctx*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC7 (char*,struct kioctx*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kioctx_cachep ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct kioctx*) ; 
 struct kioctx* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 () ; 

__attribute__((used)) static struct kioctx *FUNC20(unsigned nr_events)
{
	struct mm_struct *mm;
	struct kioctx *ctx;
	int did_sync = 0;

	/* Prevent overflows */
	if ((nr_events > (0x10000000U / sizeof(struct io_event))) ||
	    (nr_events > (0x10000000U / sizeof(struct kiocb)))) {
		FUNC13("ENOMEM: nr_events too high\n");
		return FUNC0(-EINVAL);
	}

	if ((unsigned long)nr_events > aio_max_nr)
		return FUNC0(-EAGAIN);

	ctx = FUNC11(kioctx_cachep, GFP_KERNEL);
	if (!ctx)
		return FUNC0(-ENOMEM);

	ctx->max_reqs = nr_events;
	mm = ctx->mm = current->mm;
	FUNC5(&mm->mm_count);

	FUNC6(&ctx->users, 2);
	FUNC16(&ctx->ctx_lock);
	FUNC16(&ctx->ring_info.ring_lock);
	FUNC9(&ctx->wait);

	FUNC2(&ctx->active_reqs);
	FUNC2(&ctx->run_list);
	FUNC1(&ctx->wq, aio_kick_handler);

	if (FUNC4(ctx) < 0)
		goto out_freectx;

	/* limit the number of system wide aios */
	do {
		FUNC15(&aio_nr_lock);
		if (aio_nr + nr_events > aio_max_nr ||
		    aio_nr + nr_events < aio_nr)
			ctx->max_reqs = 0;
		else
			aio_nr += ctx->max_reqs;
		FUNC18(&aio_nr_lock);
		if (ctx->max_reqs || did_sync)
			break;

		/* wait for rcu callbacks to have completed before giving up */
		FUNC19();
		did_sync = 1;
		ctx->max_reqs = nr_events;
	} while (1);

	if (ctx->max_reqs == 0)
		goto out_cleanup;

	/* now link into global list. */
	FUNC14(&mm->ioctx_lock);
	FUNC8(&ctx->list, &mm->ioctx_list);
	FUNC17(&mm->ioctx_lock);

	FUNC7("aio: allocated ioctx %p[%ld]: mm=%p mask=0x%x\n",
		ctx, ctx->user_id, current->mm, ctx->ring_info.nr);
	return ctx;

out_cleanup:
	FUNC3(ctx);
	return FUNC0(-EAGAIN);

out_freectx:
	FUNC12(mm);
	FUNC10(kioctx_cachep, ctx);
	ctx = FUNC0(-ENOMEM);

	FUNC7("aio: error allocating ioctx %p\n", ctx);
	return ctx;
}