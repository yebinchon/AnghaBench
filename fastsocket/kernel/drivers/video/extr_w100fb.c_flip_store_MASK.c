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
struct w100fb_par {int flip; } ;
struct fb_info {struct w100fb_par* par; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct w100fb_par*) ; 
 struct fb_info* FUNC1 (struct device*) ; 
 unsigned int FUNC2 (char const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct w100fb_par*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
{
	unsigned int flip;
	struct fb_info *info = FUNC1(dev);
	struct w100fb_par *par=info->par;

	flip = FUNC2(buf, NULL, 10);

	if (flip > 0)
		par->flip = 1;
	else
		par->flip = 0;

	FUNC4();
	FUNC3(par);
	FUNC5();

	FUNC0(par);

	return count;
}