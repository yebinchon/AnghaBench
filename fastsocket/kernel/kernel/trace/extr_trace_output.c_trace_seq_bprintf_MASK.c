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
typedef  int /*<<< orphan*/  u32 ;
struct trace_seq {int len; scalar_t__ buffer; } ;

/* Variables and functions */
 int PAGE_SIZE ; 
 int FUNC0 (scalar_t__,int,char const*,int /*<<< orphan*/  const*) ; 

int FUNC1(struct trace_seq *s, const char *fmt, const u32 *binary)
{
	int len = (PAGE_SIZE - 1) - s->len;
	int ret;

	if (!len)
		return 0;

	ret = FUNC0(s->buffer + s->len, len, fmt, binary);

	/* If we can't write it all, don't bother writing anything */
	if (ret >= len)
		return 0;

	s->len += ret;

	return len;
}