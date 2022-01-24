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
struct wb35_tx {void* Tx4Urb; void* Tx2Urb; } ;
struct hw_data {struct wb35_tx Wb35Tx; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 

unsigned char FUNC2(struct hw_data * pHwData)
{
	struct wb35_tx *pWb35Tx = &pHwData->Wb35Tx;

	pWb35Tx->Tx4Urb = FUNC0(0, GFP_ATOMIC);
	if (!pWb35Tx->Tx4Urb)
		return false;

	pWb35Tx->Tx2Urb = FUNC0(0, GFP_ATOMIC);
	if (!pWb35Tx->Tx2Urb)
	{
		FUNC1( pWb35Tx->Tx4Urb );
		return false;
	}

	return true;
}