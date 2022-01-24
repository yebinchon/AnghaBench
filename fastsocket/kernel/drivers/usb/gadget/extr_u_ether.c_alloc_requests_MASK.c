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
struct gether {int /*<<< orphan*/  out_ep; int /*<<< orphan*/  in_ep; } ;
struct eth_dev {int /*<<< orphan*/  req_lock; int /*<<< orphan*/  rx_reqs; int /*<<< orphan*/  tx_reqs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct eth_dev*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct eth_dev *dev, struct gether *link, unsigned n)
{
	int	status;

	FUNC2(&dev->req_lock);
	status = FUNC1(&dev->tx_reqs, link->in_ep, n);
	if (status < 0)
		goto fail;
	status = FUNC1(&dev->rx_reqs, link->out_ep, n);
	if (status < 0)
		goto fail;
	goto done;
fail:
	FUNC0(dev, "can't alloc requests\n");
done:
	FUNC3(&dev->req_lock);
	return status;
}