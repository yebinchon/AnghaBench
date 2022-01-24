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
struct rpcrdma_rep {int /*<<< orphan*/  rr_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rpcrdma_tasklet_g ; 
 int /*<<< orphan*/  rpcrdma_tasklets_g ; 
 int /*<<< orphan*/  rpcrdma_tk_lock_g ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC4(struct rpcrdma_rep *rep)
{
	unsigned long flags;

	FUNC1(&rpcrdma_tk_lock_g, flags);
	FUNC0(&rep->rr_list, &rpcrdma_tasklets_g);
	FUNC2(&rpcrdma_tk_lock_g, flags);
	FUNC3(&rpcrdma_tasklet_g);
}