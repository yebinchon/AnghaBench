#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ count; int descrtab_phys; unsigned int hwptr; unsigned int swptr; int /*<<< orphan*/  wait; scalar_t__ mapped; } ;
struct cs4297a_state {TYPE_1__ dma_dac; int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  serdma_descr_t ;
struct TYPE_6__ {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int EBUSY ; 
 int FRAME_TX_US ; 
 int HZ ; 
 int M_DMA_CURDSCR_ADDR ; 
 int /*<<< orphan*/  R_SER_DMA_CUR_DSCR_ADDR_TX ; 
 int /*<<< orphan*/  R_SER_DMA_DSCR_COUNT_TX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC10(struct cs4297a_state *s, int nonblock)
{
	FUNC0(wait, current);
	unsigned long flags;
        unsigned hwptr;
	unsigned tmo;
	int count;

	if (s->dma_dac.mapped)
		return 0;
        if (nonblock)
                return -EBUSY;
	FUNC3(&s->dma_dac.wait, &wait);
        while ((count = FUNC2(FUNC1(R_SER_DMA_DSCR_COUNT_TX))) ||
               (s->dma_dac.count > 0)) {
                if (!FUNC7(current)) {
                        FUNC6(TASK_INTERRUPTIBLE);
                        /* XXXKW is this calculation working? */
                        tmo = ((count * FRAME_TX_US) * HZ) / 1000000;
                        FUNC5(tmo + 1);
                } else {
                        /* XXXKW do I care if there is a signal pending? */
                }
        }
        FUNC8(&s->lock, flags);
        /* Reset the bookkeeping */
        hwptr = (int)(((FUNC2(FUNC1(R_SER_DMA_CUR_DSCR_ADDR_TX)) & M_DMA_CURDSCR_ADDR) -
                       s->dma_dac.descrtab_phys) / sizeof(serdma_descr_t));
        s->dma_dac.hwptr = s->dma_dac.swptr = hwptr;
        FUNC9(&s->lock, flags);
	FUNC4(&s->dma_dac.wait, &wait);
	current->state = TASK_RUNNING;
	return 0;
}