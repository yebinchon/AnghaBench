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
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_2__ {size_t size_buf; int /*<<< orphan*/  kern_buf; int /*<<< orphan*/  resource; } ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char const*,unsigned long) ; 
 TYPE_1__* image ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC3(unsigned int minor, const char *buf,
	size_t count, loff_t *ppos)
{
	ssize_t retval;
	ssize_t copied = 0;

	if (count <= image[minor].size_buf) {
		retval = FUNC0(image[minor].kern_buf, buf,
			(unsigned long)count);
		if (retval != 0)
			copied = (copied - retval);
		else
			copied = count;

		copied = FUNC2(image[minor].resource,
			image[minor].kern_buf, copied, *ppos);
	} else {
		/* XXX Need to write this */
		FUNC1("Currently don't support large transfers\n");
		/* Map in pages from userspace */

		/* Call vme_master_write to do the transfer */
		return -EINVAL;
	}

	return copied;
}