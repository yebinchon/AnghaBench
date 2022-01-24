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
struct uhci_td {int /*<<< orphan*/  dma_handle; int /*<<< orphan*/  fl_list; int /*<<< orphan*/  list; } ;
struct uhci_hcd {int /*<<< orphan*/  td_pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct uhci_td*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct uhci_td*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct uhci_hcd*) ; 

__attribute__((used)) static void FUNC4(struct uhci_hcd *uhci, struct uhci_td *td)
{
	if (!FUNC2(&td->list))
		FUNC0(FUNC3(uhci), "td %p still in list!\n", td);
	if (!FUNC2(&td->fl_list))
		FUNC0(FUNC3(uhci), "td %p still in fl_list!\n", td);

	FUNC1(uhci->td_pool, td, td->dma_handle);
}