#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct seq_file {struct ftrace_event_call* private; } ;
struct ftrace_event_field {char const* type; int /*<<< orphan*/  is_signed; int /*<<< orphan*/  size; int /*<<< orphan*/  offset; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/  print_fmt; } ;
struct ftrace_event_call {TYPE_1__ fmt; int /*<<< orphan*/  id; int /*<<< orphan*/  name; } ;

/* Variables and functions */
#define  FORMAT_HEADER 129 
#define  FORMAT_PRINTFMT 128 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char) ; 
 char* FUNC2 (char const*,char) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*,int) ; 

__attribute__((used)) static int FUNC4(struct seq_file *m, void *v)
{
	struct ftrace_event_call *call = m->private;
	struct ftrace_event_field *field;
	const char *array_descriptor;

	switch ((unsigned long)v) {
	case FORMAT_HEADER:
		FUNC0(m, "name: %s\n", call->name);
		FUNC0(m, "ID: %d\n", call->id);
		FUNC0(m, "format:\n");
		return 0;

	case FORMAT_PRINTFMT:
		FUNC0(m, "\nprint fmt: %s\n",
			   call->fmt.print_fmt);
		return 0;
	}

	/*
	 * To separate common fields from event fields, the
	 * LSB is set on the first event field. Clear it and
	 * print a newline if it is set.
	 */
	if ((unsigned long)v & 1) {
		FUNC1(m, '\n');
		v = (void *)((unsigned long)v & ~1L);
	}

	field = v;

	/*
	 * Smartly shows the array type(except dynamic array).
	 * Normal:
	 *	field:TYPE VAR
	 * If TYPE := TYPE[LEN], it is shown:
	 *	field:TYPE VAR[LEN]
	 */
	array_descriptor = FUNC2(field->type, '[');

	if (!FUNC3(field->type, "__data_loc", 10))
		array_descriptor = NULL;

	if (!array_descriptor)
		FUNC0(m, "\tfield:%s %s;\toffset:%u;\tsize:%u;\tsigned:%d;\n",
			   field->type, field->name, field->offset,
			   field->size, !!field->is_signed);
	else
		FUNC0(m, "\tfield:%.*s %s%s;\toffset:%u;\tsize:%u;\tsigned:%d;\n",
			   (int)(array_descriptor - field->type),
			   field->type, field->name,
			   array_descriptor, field->offset,
			   field->size, !!field->is_signed);

	return 0;
}