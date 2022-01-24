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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned long,unsigned long) ; 
 unsigned long FUNC1 (scalar_t__) ; 
 scalar_t__ remapped_regs ; 
 unsigned long FUNC2 (char const*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
{
	unsigned long regs, param;
	regs = FUNC2(buf, NULL, 16);
	param = FUNC1(remapped_regs + regs);
	FUNC0("Read Register 0x%08lX: 0x%08lX\n", regs, param);
	return count;
}