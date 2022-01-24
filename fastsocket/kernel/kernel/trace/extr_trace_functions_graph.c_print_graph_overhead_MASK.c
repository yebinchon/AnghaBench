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
typedef  int u32 ;
struct trace_seq {int dummy; } ;

/* Variables and functions */
 int TRACE_GRAPH_PRINT_DURATION ; 
 int TRACE_GRAPH_PRINT_OVERHEAD ; 
 int FUNC0 (struct trace_seq*,char*) ; 

__attribute__((used)) static int
FUNC1(unsigned long long duration, struct trace_seq *s,
		     u32 flags)
{
	/* If duration disappear, we don't need anything */
	if (!(flags & TRACE_GRAPH_PRINT_DURATION))
		return 1;

	/* Non nested entry or return */
	if (duration == -1)
		return FUNC0(s, "  ");

	if (flags & TRACE_GRAPH_PRINT_OVERHEAD) {
		/* Duration exceeded 100 msecs */
		if (duration > 100000ULL)
			return FUNC0(s, "! ");

		/* Duration exceeded 10 msecs */
		if (duration > 10000ULL)
			return FUNC0(s, "+ ");
	}

	return FUNC0(s, "  ");
}