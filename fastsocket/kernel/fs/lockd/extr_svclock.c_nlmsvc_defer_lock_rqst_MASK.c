#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * (* defer ) (TYPE_1__*) ;} ;
struct svc_rqst {TYPE_1__ rq_chandle; } ;
struct nlm_block {int /*<<< orphan*/  b_flags; int /*<<< orphan*/ * b_deferred_req; TYPE_1__* b_cache_req; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  B_QUEUED ; 
 int /*<<< orphan*/  NLM_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (char*,struct nlm_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nlm_drop_reply ; 
 int /*<<< orphan*/  nlm_lck_denied_nolocks ; 
 int /*<<< orphan*/  FUNC1 (struct nlm_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static __be32
FUNC4(struct svc_rqst *rqstp, struct nlm_block *block)
{
	__be32 status = nlm_lck_denied_nolocks;

	block->b_flags |= B_QUEUED;

	FUNC1(block, NLM_TIMEOUT);

	block->b_cache_req = &rqstp->rq_chandle;
	if (rqstp->rq_chandle.defer) {
		block->b_deferred_req =
			rqstp->rq_chandle.defer(block->b_cache_req);
		if (block->b_deferred_req != NULL)
			status = nlm_drop_reply;
	}
	FUNC0("lockd: nlmsvc_defer_lock_rqst block %p flags %d status %d\n",
		block, block->b_flags, FUNC2(status));

	return status;
}