#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct svc_rqst {int /*<<< orphan*/  rq_server; } ;
struct TYPE_4__ {int /*<<< orphan*/ * fl_lmops; int /*<<< orphan*/  fl_flags; } ;
struct TYPE_5__ {TYPE_1__ fl; } ;
struct TYPE_6__ {int /*<<< orphan*/  cookie; TYPE_2__ lock; } ;
struct nlm_rqst {struct nlm_block* a_block; int /*<<< orphan*/  a_flags; TYPE_3__ a_args; } ;
struct nlm_lock {int dummy; } ;
struct nlm_host {int dummy; } ;
struct nlm_file {int /*<<< orphan*/  f_blocks; int /*<<< orphan*/  f_count; } ;
struct nlm_cookie {int dummy; } ;
struct nlm_block {struct nlm_rqst* b_call; int /*<<< orphan*/  b_flist; int /*<<< orphan*/ * b_fl; struct nlm_file* b_file; struct nlm_host* b_host; int /*<<< orphan*/  b_daemon; int /*<<< orphan*/  b_list; int /*<<< orphan*/  b_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FL_SLEEP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RPC_TASK_ASYNC ; 
 int /*<<< orphan*/  FUNC1 (char*,struct nlm_block*) ; 
 int /*<<< orphan*/  FUNC2 (struct nlm_block*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct nlm_block* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct nlm_rqst* FUNC6 (struct nlm_host*) ; 
 int /*<<< orphan*/  FUNC7 (struct nlm_host*) ; 
 int /*<<< orphan*/  FUNC8 (struct nlm_rqst*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nlmsvc_lock_operations ; 
 int /*<<< orphan*/  FUNC10 (struct nlm_rqst*,struct nlm_lock*) ; 

__attribute__((used)) static struct nlm_block *
FUNC11(struct svc_rqst *rqstp, struct nlm_host *host,
		    struct nlm_file *file, struct nlm_lock *lock,
		    struct nlm_cookie *cookie)
{
	struct nlm_block	*block;
	struct nlm_rqst		*call = NULL;

	FUNC7(host);
	call = FUNC6(host);
	if (call == NULL)
		return NULL;

	/* Allocate memory for block, and initialize arguments */
	block = FUNC4(sizeof(*block), GFP_KERNEL);
	if (block == NULL)
		goto failed;
	FUNC3(&block->b_count);
	FUNC0(&block->b_list);
	FUNC0(&block->b_flist);

	if (!FUNC10(call, lock))
		goto failed_free;

	/* Set notifier function for VFS, and init args */
	call->a_args.lock.fl.fl_flags |= FL_SLEEP;
	call->a_args.lock.fl.fl_lmops = &nlmsvc_lock_operations;
	FUNC9(&call->a_args.cookie);

	FUNC1("lockd: created block %p...\n", block);

	/* Create and initialize the block */
	block->b_daemon = rqstp->rq_server;
	block->b_host   = host;
	block->b_file   = file;
	block->b_fl = NULL;
	file->f_count++;

	/* Add to file's list of blocks */
	FUNC5(&block->b_flist, &file->f_blocks);

	/* Set up RPC arguments for callback */
	block->b_call = call;
	call->a_flags   = RPC_TASK_ASYNC;
	call->a_block = block;

	return block;

failed_free:
	FUNC2(block);
failed:
	FUNC8(call);
	return NULL;
}