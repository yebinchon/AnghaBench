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
struct rfkill {int /*<<< orphan*/  lock; int /*<<< orphan*/  state; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 struct rfkill* FUNC3 (struct device*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
				 struct device_attribute *attr,
				 char *buf)
{
	struct rfkill *rfkill = FUNC3(dev);
	unsigned long flags;
	u32 state;

	FUNC0(&rfkill->lock, flags);
	state = rfkill->state;
	FUNC1(&rfkill->lock, flags);

	return FUNC2(buf, "%d\n", FUNC4(state));
}