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
struct snd_usb_endpoint {scalar_t__ use_count; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  EP_FLAG_ACTIVATED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_usb_endpoint*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_usb_endpoint*) ; 

int FUNC3(struct snd_usb_endpoint *ep)
{
	if (!ep)
		return -EINVAL;

	FUNC1(ep, 1, 1);
	FUNC2(ep);

	if (ep->use_count != 0)
		return 0;

	FUNC0(EP_FLAG_ACTIVATED, &ep->flags);

	return 0;
}