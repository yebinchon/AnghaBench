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
struct ccid_operations {int /*<<< orphan*/  ccid_name; int /*<<< orphan*/  ccid_id; int /*<<< orphan*/ * ccid_hc_rx_slab; int /*<<< orphan*/ * ccid_hc_tx_slab; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ccid_operations *ccid_ops)
{
	FUNC0(ccid_ops->ccid_hc_tx_slab);
	ccid_ops->ccid_hc_tx_slab = NULL;
	FUNC0(ccid_ops->ccid_hc_rx_slab);
	ccid_ops->ccid_hc_rx_slab = NULL;

	FUNC1("CCID: Deactivated CCID %d (%s)\n",
		ccid_ops->ccid_id, ccid_ops->ccid_name);
}