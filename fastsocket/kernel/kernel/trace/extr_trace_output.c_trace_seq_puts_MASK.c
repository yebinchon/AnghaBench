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
struct trace_seq {int len; scalar_t__ buffer; } ;

/* Variables and functions */
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,char const*,int) ; 
 int FUNC1 (char const*) ; 

int FUNC2(struct trace_seq *s, const char *str)
{
	int len = FUNC1(str);

	if (len > ((PAGE_SIZE - 1) - s->len))
		return 0;

	FUNC0(s->buffer + s->len, str, len);
	s->len += len;

	return len;
}