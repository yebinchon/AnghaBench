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
typedef  size_t suspend_state_t ;
struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 size_t PM_SUSPEND_MAX ; 
 size_t PM_SUSPEND_STANDBY ; 
 int FUNC0 (size_t) ; 
 int FUNC1 () ; 
 char* FUNC2 (char const*,char,size_t) ; 
 char** pm_states ; 
 int FUNC3 (char const* const) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char const* const,int) ; 

__attribute__((used)) static ssize_t FUNC5(struct kobject *kobj, struct kobj_attribute *attr,
			   const char *buf, size_t n)
{
#ifdef CONFIG_SUSPEND
	suspend_state_t state = PM_SUSPEND_STANDBY;
	const char * const *s;
#endif
	char *p;
	int len;
	int error = -EINVAL;

	p = FUNC2(buf, '\n', n);
	len = p ? p - buf : n;

	/* First, check if we are requested to hibernate */
	if (len == 4 && !FUNC4(buf, "disk", len)) {
		error = FUNC1();
  goto Exit;
	}

#ifdef CONFIG_SUSPEND
	for (s = &pm_states[state]; state < PM_SUSPEND_MAX; s++, state++) {
		if (*s && len == strlen(*s) && !strncmp(buf, *s, len))
			break;
	}
	if (state < PM_SUSPEND_MAX && *s)
		error = enter_state(state);
#endif

 Exit:
	return error ? error : n;
}