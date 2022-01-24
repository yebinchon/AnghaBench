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
struct vme_master_resource {int /*<<< orphan*/  lock; scalar_t__ kern_base; } ;
typedef  int ssize_t ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

ssize_t FUNC3(struct vme_master_resource *image, void *buf,
	size_t count, loff_t offset)
{
	int retval;

	FUNC1(&(image->lock));

	FUNC0(buf, image->kern_base + offset, (unsigned int)count);
	retval = count;

	FUNC2(&(image->lock));

	return retval;
}