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
struct dlm_lkb {int /*<<< orphan*/  lkb_astqueue; } ;

/* Variables and functions */
 int /*<<< orphan*/  ast_queue_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct dlm_lkb *lkb)
{
	FUNC2(&ast_queue_lock);
	if (!FUNC1(&lkb->lkb_astqueue))
		FUNC0(&lkb->lkb_astqueue);
	FUNC3(&ast_queue_lock);
}