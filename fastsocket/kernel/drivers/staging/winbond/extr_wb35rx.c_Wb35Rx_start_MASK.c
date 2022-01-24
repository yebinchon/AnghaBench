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
struct wb35_rx {int /*<<< orphan*/  RxFireCounter; int /*<<< orphan*/  EP3vm_state; } ;
struct hw_data {struct wb35_rx Wb35Rx; } ;
struct wbsoft_priv {struct hw_data sHwData; } ;
struct ieee80211_hw {struct wbsoft_priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  VM_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct ieee80211_hw *hw)
{
	struct wbsoft_priv *priv = hw->priv;
	struct hw_data * pHwData = &priv->sHwData;
	struct wb35_rx *pWb35Rx = &pHwData->Wb35Rx;

	// Allow only one thread to run into the Wb35Rx() function
	if (FUNC2(&pWb35Rx->RxFireCounter) == 1) {
		pWb35Rx->EP3vm_state = VM_RUNNING;
		FUNC0(hw);
	} else
		FUNC1(&pWb35Rx->RxFireCounter);
}