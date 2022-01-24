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
struct trace_seq {char* buffer; int len; } ;
struct trace_print_flags {char* name; unsigned long mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct trace_seq*,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct trace_seq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct trace_seq*,char const*) ; 

const char *
FUNC3(struct trace_seq *p, const char *delim,
		       unsigned long flags,
		       const struct trace_print_flags *flag_array)
{
	unsigned long mask;
	const char *str;
	const char *ret = p->buffer + p->len;
	int i, first = 1;

	for (i = 0;  flag_array[i].name && flags; i++) {

		mask = flag_array[i].mask;
		if ((flags & mask) != mask)
			continue;

		str = flag_array[i].name;
		flags &= ~mask;
		if (!first && delim)
			FUNC2(p, delim);
		else
			first = 0;
		FUNC2(p, str);
	}

	/* check for left over flags */
	if (flags) {
		if (!first && delim)
			FUNC2(p, delim);
		FUNC0(p, "0x%lx", flags);
	}

	FUNC1(p, 0);

	return ret;
}