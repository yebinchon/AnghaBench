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
struct trace_seq {int buffer_size; int len; scalar_t__ buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct trace_seq*) ; 
 int /*<<< orphan*/  FUNC1 (struct trace_seq*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char const*,int) ; 
 int FUNC3 (char const*) ; 

int FUNC4(struct trace_seq *s, const char *str)
{
	int len;

	FUNC0(s);

	len = FUNC3(str);

	while (len > ((s->buffer_size - 1) - s->len))
		FUNC1(s);

	FUNC2(s->buffer + s->len, str, len);
	s->len += len;

	return len;
}