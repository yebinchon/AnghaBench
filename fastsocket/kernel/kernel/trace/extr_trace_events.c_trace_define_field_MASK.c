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
struct ftrace_event_field {int filter_type; int offset; int size; int is_signed; struct ftrace_event_field* type; struct ftrace_event_field* name; int /*<<< orphan*/  link; } ;
struct ftrace_event_call {int /*<<< orphan*/  fields; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FILTER_OTHER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct ftrace_event_field*) ; 
 void* FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 struct ftrace_event_field* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC5(struct ftrace_event_call *call, const char *type,
		       const char *name, int offset, int size, int is_signed,
		       int filter_type)
{
	struct ftrace_event_field *field;

	field = FUNC3(sizeof(*field), GFP_KERNEL);
	if (!field)
		goto err;

	field->name = FUNC2(name, GFP_KERNEL);
	if (!field->name)
		goto err;

	field->type = FUNC2(type, GFP_KERNEL);
	if (!field->type)
		goto err;

	if (filter_type == FILTER_OTHER)
		field->filter_type = FUNC0(type);
	else
		field->filter_type = filter_type;

	field->offset = offset;
	field->size = size;
	field->is_signed = is_signed;

	FUNC4(&field->link, &call->fields);

	return 0;

err:
	if (field) {
		FUNC1(field->name);
		FUNC1(field->type);
	}
	FUNC1(field);

	return -ENOMEM;
}