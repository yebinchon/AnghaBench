#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct slic_cmdqueue {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {TYPE_1__ lock; } ;
struct adapter {scalar_t__ state; int slic_handle_ix; TYPE_2__ cmdq_done; TYPE_2__ cmdq_free; TYPE_2__ cmdq_all; } ;

/* Variables and functions */
 scalar_t__ ADAPT_DOWN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int SLIC_CMDQ_INITPAGES ; 
 int STATUS_FAILURE ; 
 int STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*) ; 
 int* FUNC4 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct adapter *adapter)
{
	int i;
	u32 *pageaddr;

	FUNC0(adapter->state == ADAPT_DOWN);
	FUNC1(&adapter->cmdq_all, 0, sizeof(struct slic_cmdqueue));
	FUNC1(&adapter->cmdq_free, 0, sizeof(struct slic_cmdqueue));
	FUNC1(&adapter->cmdq_done, 0, sizeof(struct slic_cmdqueue));
	FUNC6(&adapter->cmdq_all.lock.lock);
	FUNC6(&adapter->cmdq_free.lock.lock);
	FUNC6(&adapter->cmdq_done.lock.lock);
	FUNC5(adapter);
	adapter->slic_handle_ix = 1;
	for (i = 0; i < SLIC_CMDQ_INITPAGES; i++) {
		pageaddr = FUNC4(adapter);
#ifndef CONFIG_X86_64
		FUNC0(((u32) pageaddr & 0xFFFFF000) == (u32) pageaddr);
#endif
		if (!pageaddr) {
			FUNC3(adapter);
			return STATUS_FAILURE;
		}
		FUNC2(adapter, pageaddr);
	}
	adapter->slic_handle_ix = 1;

	return STATUS_SUCCESS;
}