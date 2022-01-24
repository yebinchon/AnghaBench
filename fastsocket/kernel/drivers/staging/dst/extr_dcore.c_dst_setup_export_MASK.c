#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct dst_node {scalar_t__ size; TYPE_3__* bdev; TYPE_2__* info; } ;
struct dst_export_ctl {char* device; } ;
struct dst_ctl {int dummy; } ;
typedef  int /*<<< orphan*/  dev_t ;
struct TYPE_7__ {TYPE_1__* bd_inode; } ;
struct TYPE_6__ {scalar_t__ size; int /*<<< orphan*/  local; } ;
struct TYPE_5__ {scalar_t__ i_size; } ;

/* Variables and functions */
 int ENODEV ; 
 int FMODE_READ ; 
 int FMODE_WRITE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int) ; 
 int FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct dst_node*,struct dst_export_ctl*) ; 
 int /*<<< orphan*/  loff_t ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,char*,char*) ; 

__attribute__((used)) static int FUNC6(struct dst_node *n, struct dst_ctl *ctl,
		struct dst_export_ctl *le)
{
	int err;
	dev_t dev = 0; /* gcc likes to scream here */

	FUNC5(n->info->local, sizeof(n->info->local), "%s", le->device);

	err = FUNC1(le->device, &dev);
	if (err)
		return err;

	n->bdev = FUNC4(dev, FMODE_READ|FMODE_WRITE);
	if (!n->bdev)
		return -ENODEV;

	if (n->size != 0)
		n->size = FUNC3(loff_t, n->bdev->bd_inode->i_size, n->size);
	else
		n->size = n->bdev->bd_inode->i_size;

	n->info->size = n->size;
	err = FUNC2(n, le);
	if (err)
		goto err_out_cleanup;

	return 0;

err_out_cleanup:
	FUNC0(n->bdev, FMODE_READ|FMODE_WRITE);
	n->bdev = NULL;

	return err;
}