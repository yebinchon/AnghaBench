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
struct kioctx {int /*<<< orphan*/  ctx_lock; } ;
struct TYPE_4__ {int /*<<< orphan*/ * prev; int /*<<< orphan*/  next; } ;
struct TYPE_3__ {int /*<<< orphan*/  task_list; } ;
struct kiocb {TYPE_2__ ki_run_list; TYPE_1__ ki_wait; int /*<<< orphan*/  (* ki_retry ) (struct kiocb*) ;struct kioctx* ki_ctx; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EINTR ; 
 int /*<<< orphan*/  EIOCBQUEUED ; 
 int /*<<< orphan*/  EIOCBRETRY ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct kiocb*) ; 
 int /*<<< orphan*/  FUNC3 (struct kiocb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct kioctx*) ; 
 int /*<<< orphan*/  FUNC5 (struct kiocb*) ; 
 scalar_t__ FUNC6 (struct kiocb*) ; 
 scalar_t__ FUNC7 (struct kiocb*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC12(struct kiocb *iocb)
{
	struct kioctx	*ctx = iocb->ki_ctx;
	ssize_t (*retry)(struct kiocb *);
	ssize_t ret;

	if (!(retry = iocb->ki_retry)) {
		FUNC9("aio_run_iocb: iocb->ki_retry = NULL\n");
		return 0;
	}

	/*
	 * We don't want the next retry iteration for this
	 * operation to start until this one has returned and
	 * updated the iocb state. However, wait_queue functions
	 * can trigger a kick_iocb from interrupt context in the
	 * meantime, indicating that data is available for the next
	 * iteration. We want to remember that and enable the
	 * next retry iteration _after_ we are through with
	 * this one.
	 *
	 * So, in order to be able to register a "kick", but
	 * prevent it from being queued now, we clear the kick
	 * flag, but make the kick code *think* that the iocb is
	 * still on the run list until we are actually done.
	 * When we are done with this iteration, we check if
	 * the iocb was kicked in the meantime and if so, queue
	 * it up afresh.
	 */

	FUNC5(iocb);

	/*
	 * This is so that aio_complete knows it doesn't need to
	 * pull the iocb off the run list (We can't just call
	 * INIT_LIST_HEAD because we don't want a kick_iocb to
	 * queue this on the run list yet)
	 */
	iocb->ki_run_list.next = *(iocb->ki_run_list.prev = NULL);
	FUNC11(&ctx->ctx_lock);

	/* Quit retrying if the i/o has been cancelled */
	if (FUNC6(iocb)) {
		ret = -EINTR;
		FUNC3(iocb, ret, 0);
		/* must not access the iocb after this */
		goto out;
	}

	/*
	 * Now we are all set to call the retry method in async
	 * context.
	 */
	ret = retry(iocb);

	if (ret != -EIOCBRETRY && ret != -EIOCBQUEUED) {
		FUNC0(!FUNC8(&iocb->ki_wait.task_list));
		FUNC3(iocb, ret, 0);
	}
out:
	FUNC10(&ctx->ctx_lock);

	if (-EIOCBRETRY == ret) {
		/*
		 * OK, now that we are done with this iteration
		 * and know that there is more left to go,
		 * this is where we let go so that a subsequent
		 * "kick" can start the next iteration
		 */

		/* will make __queue_kicked_iocb succeed from here on */
		FUNC1(&iocb->ki_run_list);
		/* we must queue the next iteration ourselves, if it
		 * has already been kicked */
		if (FUNC7(iocb)) {
			FUNC2(iocb);

			/*
			 * __queue_kicked_iocb will always return 1 here, because
			 * iocb->ki_run_list is empty at this point so it should
			 * be safe to unconditionally queue the context into the
			 * work queue.
			 */
			FUNC4(ctx);
		}
	}
	return ret;
}