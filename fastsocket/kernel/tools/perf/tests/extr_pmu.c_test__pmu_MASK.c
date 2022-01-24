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
struct perf_event_attr {int config; int config1; int config2; } ;
struct list_head {int dummy; } ;
typedef  int /*<<< orphan*/  attr ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  formats ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event_attr*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct perf_event_attr*,struct list_head*) ; 
 int FUNC3 (char*,int /*<<< orphan*/ *) ; 
 char* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 struct list_head* FUNC6 () ; 

int FUNC7(void)
{
	char *format = FUNC4();
	FUNC0(formats);
	struct list_head *terms = FUNC6();
	int ret;

	if (!format)
		return -EINVAL;

	do {
		struct perf_event_attr attr;

		FUNC1(&attr, 0, sizeof(attr));

		ret = FUNC3(format, &formats);
		if (ret)
			break;

		ret = FUNC2(&formats, &attr, terms);
		if (ret)
			break;

		ret = -EINVAL;

		if (attr.config  != 0xc00000000002a823)
			break;
		if (attr.config1 != 0x8000400000000145)
			break;
		if (attr.config2 != 0x0400000020041d07)
			break;

		ret = 0;
	} while (0);

	FUNC5(format);
	return ret;
}