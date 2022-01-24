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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct dlm_lkb {int lkb_flags; int /*<<< orphan*/  lkb_astqueue; int /*<<< orphan*/  lkb_ref; } ;

/* Variables and functions */
 int DLM_IFL_USER ; 
 int /*<<< orphan*/  WAKE_ASTS ; 
 int /*<<< orphan*/  ast_queue ; 
 int /*<<< orphan*/  ast_queue_lock ; 
 scalar_t__ ast_seq_count ; 
 int /*<<< orphan*/  astd_task ; 
 int /*<<< orphan*/  astd_wakeflags ; 
 int FUNC0 (struct dlm_lkb*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_lkb*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

void FUNC9(struct dlm_lkb *lkb, uint32_t flags, int mode, int status,
		 uint32_t sbflags)
{
	uint64_t seq;
	int rv;

	FUNC6(&ast_queue_lock);

	seq = ++ast_seq_count;

	if (lkb->lkb_flags & DLM_IFL_USER) {
		FUNC7(&ast_queue_lock);
		FUNC1(lkb, flags, mode, status, sbflags, seq);
		return;
	}

	rv = FUNC0(lkb, flags, mode, status, sbflags, seq);
	if (rv < 0) {
		FUNC7(&ast_queue_lock);
		return;
	}

	if (FUNC4(&lkb->lkb_astqueue)) {
		FUNC2(&lkb->lkb_ref);
		FUNC3(&lkb->lkb_astqueue, &ast_queue);
	}
	FUNC7(&ast_queue_lock);

	FUNC5(WAKE_ASTS, &astd_wakeflags);
	FUNC8(astd_task);
}