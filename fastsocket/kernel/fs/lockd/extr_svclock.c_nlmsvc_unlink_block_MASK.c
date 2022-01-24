#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct nlm_block {TYPE_4__* b_call; TYPE_1__* b_file; } ;
struct TYPE_6__ {int /*<<< orphan*/  fl; } ;
struct TYPE_7__ {TYPE_2__ lock; } ;
struct TYPE_8__ {TYPE_3__ a_args; } ;
struct TYPE_5__ {int /*<<< orphan*/  f_file; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct nlm_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct nlm_block*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct nlm_block *block)
{
	int status;
	FUNC0("lockd: unlinking block %p...\n", block);

	/* Remove block from list */
	status = FUNC2(block->b_file->f_file, &block->b_call->a_args.lock.fl);
	FUNC1(block);
	return status;
}