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
struct gmidi_device {scalar_t__ config; int /*<<< orphan*/  out_ep; int /*<<< orphan*/  in_ep; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gmidi_device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct gmidi_device *dev)
{
	if (dev->config == 0) {
		return;
	}

	FUNC0(dev, "reset config\n");

	/* just disable endpoints, forcing completion of pending i/o.
	 * all our completion handlers free their requests in this case.
	 */
	FUNC1(dev->in_ep);
	FUNC1(dev->out_ep);
	dev->config = 0;
}