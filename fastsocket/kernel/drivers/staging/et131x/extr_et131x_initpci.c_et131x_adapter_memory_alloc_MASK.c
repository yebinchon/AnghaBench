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
struct et131x_adapter {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct et131x_adapter*) ; 
 int FUNC2 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct et131x_adapter*) ; 
 int FUNC4 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct et131x_adapter*) ; 

int FUNC6(struct et131x_adapter *adapter)
{
	int status = 0;

	do {
		/* Allocate memory for the Tx Ring */
		status = FUNC4(adapter);
		if (status != 0) {
			FUNC0(&adapter->pdev->dev,
				  "et131x_tx_dma_memory_alloc FAILED\n");
			break;
		}

		/* Receive buffer memory allocation */
		status = FUNC2(adapter);
		if (status != 0) {
			FUNC0(&adapter->pdev->dev,
				  "et131x_rx_dma_memory_alloc FAILED\n");
			FUNC5(adapter);
			break;
		}

		/* Init receive data structures */
		status = FUNC1(adapter);
		if (status != 0) {
			FUNC0(&adapter->pdev->dev,
				"et131x_init_recv FAILED\n");
			FUNC5(adapter);
			FUNC3(adapter);
			break;
		}
	} while (0);
	return status;
}