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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct trace_seq*,char*,char*,unsigned char const) ; 
 int /*<<< orphan*/  FUNC1 (struct trace_seq*,int /*<<< orphan*/ ) ; 

const char *
FUNC2(struct trace_seq *p, const unsigned char *buf, int buf_len)
{
	int i;
	const char *ret = p->buffer + p->len;

	for (i = 0; i < buf_len; i++)
		FUNC0(p, "%s%2.2x", i == 0 ? "" : " ", buf[i]);

	FUNC1(p, 0);

	return ret;
}