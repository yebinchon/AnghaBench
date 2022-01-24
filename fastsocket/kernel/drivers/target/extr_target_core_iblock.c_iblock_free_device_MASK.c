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
struct se_device {int dummy; } ;
struct iblock_dev {int /*<<< orphan*/ * ibd_bio_set; int /*<<< orphan*/ * ibd_bd; } ;

/* Variables and functions */
 int FMODE_EXCL ; 
 int FMODE_READ ; 
 int FMODE_WRITE ; 
 struct iblock_dev* FUNC0 (struct se_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct iblock_dev*) ; 

__attribute__((used)) static void FUNC4(struct se_device *dev)
{
	struct iblock_dev *ib_dev = FUNC0(dev);

	if (ib_dev->ibd_bd != NULL)
		FUNC2(ib_dev->ibd_bd, FMODE_WRITE|FMODE_READ|FMODE_EXCL);
	if (ib_dev->ibd_bio_set != NULL)
		FUNC1(ib_dev->ibd_bio_set);
	FUNC3(ib_dev);
}