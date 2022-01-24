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
struct filter_parse_state {int lasterr_pos; size_t lasterr; } ;
struct event_filter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_TEMPORARY ; 
 int PAGE_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct event_filter*,char*) ; 
 char** err_text ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*) ; 

__attribute__((used)) static void FUNC5(struct filter_parse_state *ps,
			      struct event_filter *filter)
{
	int pos = ps->lasterr_pos;
	char *buf, *pbuf;

	buf = (char *)FUNC0(GFP_TEMPORARY);
	if (!buf)
		return;

	FUNC1(filter, "\n");
	FUNC3(buf, ' ', PAGE_SIZE);
	if (pos > PAGE_SIZE - 128)
		pos = 0;
	buf[pos] = '^';
	pbuf = &buf[pos] + 1;

	FUNC4(pbuf, "\nparse_error: %s\n", err_text[ps->lasterr]);
	FUNC1(filter, buf);
	FUNC2((unsigned long) buf);
}