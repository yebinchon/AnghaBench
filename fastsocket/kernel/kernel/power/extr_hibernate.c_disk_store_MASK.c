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
struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int HIBERNATION_FIRST ; 
 int HIBERNATION_INVALID ; 
 int HIBERNATION_MAX ; 
#define  HIBERNATION_PLATFORM 132 
#define  HIBERNATION_REBOOT 131 
#define  HIBERNATION_SHUTDOWN 130 
#define  HIBERNATION_TEST 129 
#define  HIBERNATION_TESTPROC 128 
 int hibernation_mode ; 
 int /*<<< orphan*/ * hibernation_modes ; 
 int /*<<< orphan*/  hibernation_ops ; 
 char* FUNC0 (char const*,char,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pm_mutex ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ssize_t FUNC6(struct kobject *kobj, struct kobj_attribute *attr,
			  const char *buf, size_t n)
{
	int error = 0;
	int i;
	int len;
	char *p;
	int mode = HIBERNATION_INVALID;

	p = FUNC0(buf, '\n', n);
	len = p ? p - buf : n;

	FUNC1(&pm_mutex);
	for (i = HIBERNATION_FIRST; i <= HIBERNATION_MAX; i++) {
		if (len == FUNC4(hibernation_modes[i])
		    && !FUNC5(buf, hibernation_modes[i], len)) {
			mode = i;
			break;
		}
	}
	if (mode != HIBERNATION_INVALID) {
		switch (mode) {
		case HIBERNATION_SHUTDOWN:
		case HIBERNATION_REBOOT:
		case HIBERNATION_TEST:
		case HIBERNATION_TESTPROC:
			hibernation_mode = mode;
			break;
		case HIBERNATION_PLATFORM:
			if (hibernation_ops)
				hibernation_mode = mode;
			else
				error = -EINVAL;
		}
	} else
		error = -EINVAL;

	if (!error)
		FUNC3("PM: Hibernation mode set to '%s'\n",
			 hibernation_modes[mode]);
	FUNC2(&pm_mutex);
	return error ? error : n;
}