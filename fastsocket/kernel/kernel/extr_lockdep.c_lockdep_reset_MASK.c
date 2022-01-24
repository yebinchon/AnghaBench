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
struct held_lock {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  held_locks; scalar_t__ lockdep_recursion; scalar_t__ lockdep_depth; scalar_t__ curr_chain_key; } ;

/* Variables and functions */
 int CHAINHASH_SIZE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int MAX_LOCK_DEPTH ; 
 scalar_t__ chainhash_table ; 
 TYPE_1__* current ; 
 int debug_locks ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ nr_hardirq_chains ; 
 scalar_t__ nr_process_chains ; 
 scalar_t__ nr_softirq_chains ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 

void FUNC4(void)
{
	unsigned long flags;
	int i;

	FUNC3(flags);
	current->curr_chain_key = 0;
	current->lockdep_depth = 0;
	current->lockdep_recursion = 0;
	FUNC1(current->held_locks, 0, MAX_LOCK_DEPTH*sizeof(struct held_lock));
	nr_hardirq_chains = 0;
	nr_softirq_chains = 0;
	nr_process_chains = 0;
	debug_locks = 1;
	for (i = 0; i < CHAINHASH_SIZE; i++)
		FUNC0(chainhash_table + i);
	FUNC2(flags);
}