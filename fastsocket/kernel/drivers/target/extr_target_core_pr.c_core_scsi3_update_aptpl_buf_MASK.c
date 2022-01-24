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
typedef  int /*<<< orphan*/  u32 ;
struct se_device {int /*<<< orphan*/  dev_reservation_lock; } ;

/* Variables and functions */
 int FUNC0 (struct se_device*,unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(
	struct se_device *dev,
	unsigned char *buf,
	u32 pr_aptpl_buf_len,
	int clear_aptpl_metadata)
{
	int ret;

	FUNC1(&dev->dev_reservation_lock);
	ret = FUNC0(dev, buf, pr_aptpl_buf_len,
				clear_aptpl_metadata);
	FUNC2(&dev->dev_reservation_lock);

	return ret;
}