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
struct sock {int dummy; } ;
struct ccid {TYPE_1__* ccid_ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  ccid_hc_tx_slab; int /*<<< orphan*/  (* ccid_hc_tx_exit ) (struct sock*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ccid*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 

void FUNC2(struct ccid *ccid, struct sock *sk)
{
	if (ccid != NULL) {
		if (ccid->ccid_ops->ccid_hc_tx_exit != NULL)
			ccid->ccid_ops->ccid_hc_tx_exit(sk);
		FUNC0(ccid->ccid_ops->ccid_hc_tx_slab, ccid);
	}
}