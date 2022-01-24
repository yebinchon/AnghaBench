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
struct uwb_dev {struct uwb_beca_e* bce; } ;
struct uwb_beca_e {int /*<<< orphan*/  mutex; int /*<<< orphan*/  lqe_stats; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 size_t FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct uwb_dev* FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				struct device_attribute *attr, char *buf)
{
	struct uwb_dev *uwb_dev = FUNC3(dev);
	struct uwb_beca_e *bce = uwb_dev->bce;
	size_t result;

	FUNC0(&bce->mutex);
	result = FUNC2(&uwb_dev->bce->lqe_stats, buf);
	FUNC1(&bce->mutex);
	return result;
}