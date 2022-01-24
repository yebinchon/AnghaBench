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
struct trace_seq {int dummy; } ;
typedef  enum print_line_t { ____Placeholder_print_line_t } print_line_t ;

/* Variables and functions */
 int TRACE_TYPE_HANDLED ; 
 int TRACE_TYPE_PARTIAL_LINE ; 
 unsigned long FUNC0 (unsigned long long,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,unsigned long) ; 
 int FUNC3 (char*) ; 
 int FUNC4 (struct trace_seq*,char*,...) ; 

enum print_line_t
FUNC5(unsigned long long duration, struct trace_seq *s)
{
	unsigned long nsecs_rem = FUNC0(duration, 1000);
	/* log10(ULONG_MAX) + '\0' */
	char msecs_str[21];
	char nsecs_str[5];
	int ret, len;
	int i;

	FUNC2(msecs_str, "%lu", (unsigned long) duration);

	/* Print msecs */
	ret = FUNC4(s, "%s", msecs_str);
	if (!ret)
		return TRACE_TYPE_PARTIAL_LINE;

	len = FUNC3(msecs_str);

	/* Print nsecs (we don't want to exceed 7 numbers) */
	if (len < 7) {
		FUNC1(nsecs_str, 8 - len, "%03lu", nsecs_rem);
		ret = FUNC4(s, ".%s", nsecs_str);
		if (!ret)
			return TRACE_TYPE_PARTIAL_LINE;
		len += FUNC3(nsecs_str);
	}

	ret = FUNC4(s, " us ");
	if (!ret)
		return TRACE_TYPE_PARTIAL_LINE;

	/* Print remaining spaces to fit the row's width */
	for (i = len; i < 7; i++) {
		ret = FUNC4(s, " ");
		if (!ret)
			return TRACE_TYPE_PARTIAL_LINE;
	}
	return TRACE_TYPE_HANDLED;
}