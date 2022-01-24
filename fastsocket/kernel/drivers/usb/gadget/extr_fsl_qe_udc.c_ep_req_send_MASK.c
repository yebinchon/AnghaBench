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
struct qe_req {int dummy; } ;
struct qe_ep {int /*<<< orphan*/  txframe; scalar_t__ last; scalar_t__ sent; int /*<<< orphan*/ * tx_req; } ;

/* Variables and functions */
 int FUNC0 (struct qe_ep*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qe_ep*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct qe_ep *ep, struct qe_req *req)
{
	int reval = 0;

	if (ep->tx_req == NULL) {
		ep->sent = 0;
		ep->last = 0;
		FUNC1(ep, 0); /* can gain a new tx_req */
		reval = FUNC0(ep, ep->txframe);
	}
	return reval;
}