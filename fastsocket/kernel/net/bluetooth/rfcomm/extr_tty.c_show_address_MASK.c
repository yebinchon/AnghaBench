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
struct rfcomm_dev {int /*<<< orphan*/  dst; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  bdaddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 struct rfcomm_dev* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *tty_dev, struct device_attribute *attr, char *buf)
{
	struct rfcomm_dev *dev = FUNC2(tty_dev);
	bdaddr_t bdaddr;
	FUNC0(&bdaddr, &dev->dst);
	return FUNC3(buf, "%s\n", FUNC1(&bdaddr));
}