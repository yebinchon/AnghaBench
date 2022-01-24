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
typedef  int /*<<< orphan*/  vme_width_t ;
typedef  int /*<<< orphan*/  vme_cycle_t ;
typedef  int /*<<< orphan*/  vme_address_t ;
struct vme_master_resource {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int FUNC0 (struct vme_master_resource*,int*,unsigned long long*,unsigned long long*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct vme_master_resource *image, int *enabled,
	unsigned long long *vme_base, unsigned long long *size,
	vme_address_t *aspace, vme_cycle_t *cycle, vme_width_t *dwidth)
{
	int retval;

	FUNC1(&(image->lock));

	retval = FUNC0(image, enabled, vme_base, size, aspace,
		cycle, dwidth);

	FUNC2(&(image->lock));

	return retval;
}