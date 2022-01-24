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
struct fb_info {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 struct fb_info* FUNC0 (struct device*) ; 
 int FUNC1 (char const*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fb_info*,int) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *device, struct device_attribute *attr,
			const char *buf, size_t count)
{
	struct fb_info *info = FUNC0(device);
	char ** last = NULL;
	int val;

	val = FUNC1(buf, last, 0);
	FUNC2(info, val);

	return count;
}