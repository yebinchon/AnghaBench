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
struct wusbhc {unsigned int trust_timeout; int /*<<< orphan*/  keep_alive_timer; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 unsigned int CONFIG_HZ ; 
 int EINVAL ; 
 int ENOSYS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC3 (char const*,char*,unsigned int*) ; 
 struct wusbhc* FUNC4 (struct device*) ; 
 int /*<<< orphan*/  wusbd ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
					struct device_attribute *attr,
					const char *buf, size_t size)
{
	struct wusbhc *wusbhc = FUNC4(dev);
	ssize_t result = -ENOSYS;
	unsigned trust_timeout;

	result = FUNC3(buf, "%u", &trust_timeout);
	if (result != 1) {
		result = -EINVAL;
		goto out;
	}
	/* FIXME: maybe we should check for range validity? */
	wusbhc->trust_timeout = trust_timeout;
	FUNC0(&wusbhc->keep_alive_timer);
	FUNC1(wusbd);
	FUNC2(wusbd, &wusbhc->keep_alive_timer,
			   (trust_timeout * CONFIG_HZ)/1000/2);
out:
	return result < 0 ? result : size;
}