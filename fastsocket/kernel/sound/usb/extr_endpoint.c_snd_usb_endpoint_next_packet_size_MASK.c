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
struct snd_usb_endpoint {int maxframesize; int phase; int freqm; int datainterval; int /*<<< orphan*/  lock; scalar_t__ fill_max; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC3(struct snd_usb_endpoint *ep)
{
	unsigned long flags;
	int ret;

	if (ep->fill_max)
		return ep->maxframesize;

	FUNC1(&ep->lock, flags);
	ep->phase = (ep->phase & 0xffff)
		+ (ep->freqm << ep->datainterval);
	ret = FUNC0(ep->phase >> 16, ep->maxframesize);
	FUNC2(&ep->lock, flags);

	return ret;
}