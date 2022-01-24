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
struct ccid_operations {int /*<<< orphan*/ * ccid_hc_rx_slab; int /*<<< orphan*/  ccid_name; int /*<<< orphan*/  ccid_id; int /*<<< orphan*/ * ccid_hc_tx_slab; int /*<<< orphan*/  ccid_hc_tx_slab_name; int /*<<< orphan*/  ccid_hc_tx_obj_size; int /*<<< orphan*/  ccid_hc_rx_slab_name; int /*<<< orphan*/  ccid_hc_rx_obj_size; } ;

/* Variables and functions */
 int ENOBUFS ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ccid_operations *ccid_ops)
{
	int err = -ENOBUFS;

	ccid_ops->ccid_hc_rx_slab =
			FUNC0(ccid_ops->ccid_hc_rx_obj_size,
					       ccid_ops->ccid_hc_rx_slab_name,
					       "ccid%u_hc_rx_sock",
					       ccid_ops->ccid_id);
	if (ccid_ops->ccid_hc_rx_slab == NULL)
		goto out;

	ccid_ops->ccid_hc_tx_slab =
			FUNC0(ccid_ops->ccid_hc_tx_obj_size,
					       ccid_ops->ccid_hc_tx_slab_name,
					       "ccid%u_hc_tx_sock",
					       ccid_ops->ccid_id);
	if (ccid_ops->ccid_hc_tx_slab == NULL)
		goto out_free_rx_slab;

	FUNC2("CCID: Activated CCID %d (%s)\n",
		ccid_ops->ccid_id, ccid_ops->ccid_name);
	err = 0;
out:
	return err;
out_free_rx_slab:
	FUNC1(ccid_ops->ccid_hc_rx_slab);
	ccid_ops->ccid_hc_rx_slab = NULL;
	goto out;
}