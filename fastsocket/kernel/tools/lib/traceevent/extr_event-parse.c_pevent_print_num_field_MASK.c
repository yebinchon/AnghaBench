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
struct pevent_record {int /*<<< orphan*/  data; } ;
struct format_field {int dummy; } ;
struct event_format {int dummy; } ;

/* Variables and functions */
 struct format_field* FUNC0 (struct event_format*,char const*) ; 
 scalar_t__ FUNC1 (struct format_field*,int /*<<< orphan*/ ,unsigned long long*) ; 
 int FUNC2 (struct trace_seq*,char const*,...) ; 

int FUNC3(struct trace_seq *s, const char *fmt,
			   struct event_format *event, const char *name,
			   struct pevent_record *record, int err)
{
	struct format_field *field = FUNC0(event, name);
	unsigned long long val;

	if (!field)
		goto failed;

	if (FUNC1(field, record->data, &val))
		goto failed;

	return FUNC2(s, fmt, val);

 failed:
	if (err)
		FUNC2(s, "CAN'T FIND FIELD \"%s\"", name);
	return -1;
}