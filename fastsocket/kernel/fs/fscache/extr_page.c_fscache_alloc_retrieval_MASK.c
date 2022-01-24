#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned long flags; int /*<<< orphan*/  fast_work; } ;
struct fscache_retrieval {TYPE_1__ op; int /*<<< orphan*/  to_do; int /*<<< orphan*/  start_time; void* context; int /*<<< orphan*/  end_io_func; struct address_space* mapping; } ;
struct fscache_cookie {int /*<<< orphan*/  n_active; } ;
struct address_space {int dummy; } ;
typedef  int /*<<< orphan*/  fscache_rw_complete_t ;

/* Variables and functions */
 unsigned long FSCACHE_OP_MYTHREAD ; 
 unsigned long FSCACHE_OP_UNUSE_COOKIE ; 
 unsigned long FSCACHE_OP_WAITING ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fscache_n_retrievals_nomem ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fscache_release_retrieval_op ; 
 int /*<<< orphan*/  fscache_retrieval_work ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 struct fscache_retrieval* FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct fscache_retrieval *FUNC7(
	struct fscache_cookie *cookie,
	struct address_space *mapping,
	fscache_rw_complete_t end_io_func,
	void *context)
{
	struct fscache_retrieval *op;

	/* allocate a retrieval operation and attempt to submit it */
	op = FUNC6(sizeof(*op), GFP_NOIO);
	if (!op) {
		FUNC5(&fscache_n_retrievals_nomem);
		return NULL;
	}

	FUNC3(&op->op, fscache_release_retrieval_op);
	FUNC2(&cookie->n_active);
	op->op.flags	= FSCACHE_OP_MYTHREAD |
		(1UL << FSCACHE_OP_WAITING) |
		(1UL << FSCACHE_OP_UNUSE_COOKIE);
	op->mapping	= mapping;
	op->end_io_func	= end_io_func;
	op->context	= context;
	op->start_time	= jiffies;
	FUNC1(&op->op.fast_work, fscache_retrieval_work);
	FUNC0(&op->to_do);
	FUNC4(&op->op, "Retr");
	return op;
}