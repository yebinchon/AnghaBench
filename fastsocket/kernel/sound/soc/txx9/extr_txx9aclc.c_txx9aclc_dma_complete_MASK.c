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
struct txx9aclc_dmadata {scalar_t__ frag_count; scalar_t__ dmacount; int /*<<< orphan*/  dma_lock; int /*<<< orphan*/  tasklet; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(void *arg)
{
	struct txx9aclc_dmadata *dmadata = arg;
	unsigned long flags;

	/* dma completion handler cannot submit new operations */
	FUNC1(&dmadata->dma_lock, flags);
	if (dmadata->frag_count >= 0) {
		dmadata->dmacount--;
		FUNC0(dmadata->dmacount < 0);
		FUNC3(&dmadata->tasklet);
	}
	FUNC2(&dmadata->dma_lock, flags);
}