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
struct wb35_tx {int /*<<< orphan*/  TxResultCount; int /*<<< orphan*/  EP2vm_state; } ;
struct hw_data {struct wb35_tx Wb35Tx; } ;
struct wbsoft_priv {struct hw_data sHwData; } ;

/* Variables and functions */
 int /*<<< orphan*/  VM_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct wbsoft_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct wbsoft_priv *adapter)
{
	struct hw_data * pHwData = &adapter->sHwData;
	struct wb35_tx *pWb35Tx = &pHwData->Wb35Tx;

	// Allow only one thread to run into function
	if (FUNC2(&pWb35Tx->TxResultCount) == 1) {
		pWb35Tx->EP2vm_state = VM_RUNNING;
		FUNC0(adapter);
	}
	else
		FUNC1(&pWb35Tx->TxResultCount);
}