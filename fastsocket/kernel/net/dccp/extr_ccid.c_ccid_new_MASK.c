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
typedef  int /*<<< orphan*/  u8 ;
struct sock {int dummy; } ;
struct ccid_operations {scalar_t__ (* ccid_hc_rx_init ) (struct ccid*,struct sock*) ;scalar_t__ (* ccid_hc_tx_init ) (struct ccid*,struct sock*) ;int /*<<< orphan*/  ccid_hc_tx_slab; int /*<<< orphan*/  ccid_hc_rx_slab; int /*<<< orphan*/  ccid_hc_tx_obj_size; int /*<<< orphan*/  ccid_hc_rx_obj_size; } ;
struct ccid {struct ccid_operations* ccid_ops; } ;

/* Variables and functions */
 struct ccid_operations* FUNC0 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct ccid* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct ccid*) ; 
 int /*<<< orphan*/  FUNC4 (struct ccid*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct ccid*,struct sock*) ; 
 scalar_t__ FUNC6 (struct ccid*,struct sock*) ; 

struct ccid *FUNC7(const u8 id, struct sock *sk, bool rx)
{
	struct ccid_operations *ccid_ops = FUNC0(id);
	struct ccid *ccid = NULL;

	if (ccid_ops == NULL)
		goto out;

	ccid = FUNC2(rx ? ccid_ops->ccid_hc_rx_slab :
				     ccid_ops->ccid_hc_tx_slab, FUNC1());
	if (ccid == NULL)
		goto out;
	ccid->ccid_ops = ccid_ops;
	if (rx) {
		FUNC4(ccid + 1, 0, ccid_ops->ccid_hc_rx_obj_size);
		if (ccid->ccid_ops->ccid_hc_rx_init != NULL &&
		    ccid->ccid_ops->ccid_hc_rx_init(ccid, sk) != 0)
			goto out_free_ccid;
	} else {
		FUNC4(ccid + 1, 0, ccid_ops->ccid_hc_tx_obj_size);
		if (ccid->ccid_ops->ccid_hc_tx_init != NULL &&
		    ccid->ccid_ops->ccid_hc_tx_init(ccid, sk) != 0)
			goto out_free_ccid;
	}
out:
	return ccid;
out_free_ccid:
	FUNC3(rx ? ccid_ops->ccid_hc_rx_slab :
			ccid_ops->ccid_hc_tx_slab, ccid);
	ccid = NULL;
	goto out;
}