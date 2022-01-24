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
struct device_driver {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int BUSID_SIZE ; 
 size_t EINVAL ; 
 size_t ENODEV ; 
 size_t ENOMEM ; 
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 int FUNC4 (char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device_driver *dev, const char *buf,
		size_t count)
{
	int len;
	char busid[BUSID_SIZE];

	if (count < 5)
		return -EINVAL;

	/* strnlen() does not include \0 */
	len = FUNC4(buf + 4, BUSID_SIZE);

	/* busid needs to include \0 termination */
	if (!(len < BUSID_SIZE))
		return -EINVAL;

	FUNC3(busid, buf + 4, BUSID_SIZE);


	if (!FUNC2(buf, "add ", 4)) {
		if (FUNC0(busid) < 0)
			return -ENOMEM;
		else {
			FUNC5("add busid %s\n", busid);
			return count;
		}
	} else if (!FUNC2(buf, "del ", 4)) {
		if (FUNC1(busid) < 0)
			return -ENODEV;
		else {
			FUNC5("del busid %s\n", busid);
			return count;
		}
	} else
		return -EINVAL;
}