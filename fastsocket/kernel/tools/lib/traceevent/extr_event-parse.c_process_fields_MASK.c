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
struct print_flag_sym {struct print_flag_sym* next; int /*<<< orphan*/ * str; int /*<<< orphan*/ * value; } ;
struct print_arg {int dummy; } ;
struct event_format {int dummy; } ;
typedef  enum event_type { ____Placeholder_event_type } event_type ;

/* Variables and functions */
 int EVENT_DELIM ; 
 int EVENT_ERROR ; 
 int EVENT_OP ; 
 struct print_arg* FUNC0 () ; 
 char* FUNC1 (struct print_arg*) ; 
 struct print_flag_sym* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct print_arg*) ; 
 int /*<<< orphan*/  FUNC4 (struct print_flag_sym*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (struct event_format*,struct print_arg*,char**) ; 
 int FUNC7 (struct event_format*,struct print_arg*,char**) ; 
 int FUNC8 (char**) ; 
 scalar_t__ FUNC9 (char*,char*) ; 
 void* FUNC10 (char*) ; 
 scalar_t__ FUNC11 (int,char*,int,char*) ; 

__attribute__((used)) static enum event_type
FUNC12(struct event_format *event, struct print_flag_sym **list, char **tok)
{
	enum event_type type;
	struct print_arg *arg = NULL;
	struct print_flag_sym *field;
	char *token = *tok;
	char *value;

	do {
		FUNC5(token);
		type = FUNC8(&token);
		if (FUNC11(type, token, EVENT_OP, "{"))
			break;

		arg = FUNC0();
		if (!arg)
			goto out_free;

		FUNC5(token);
		type = FUNC6(event, arg, &token);

		if (type == EVENT_OP)
			type = FUNC7(event, arg, &token);

		if (type == EVENT_ERROR)
			goto out_free;

		if (FUNC11(type, token, EVENT_DELIM, ","))
			goto out_free;

		field = FUNC2(1, sizeof(*field));
		if (!field)
			goto out_free;

		value = FUNC1(arg);
		if (value == NULL)
			goto out_free_field;
		field->value = FUNC10(value);
		if (field->value == NULL)
			goto out_free_field;

		FUNC3(arg);
		arg = FUNC0();
		if (!arg)
			goto out_free;

		FUNC5(token);
		type = FUNC6(event, arg, &token);
		if (FUNC11(type, token, EVENT_OP, "}"))
			goto out_free_field;

		value = FUNC1(arg);
		if (value == NULL)
			goto out_free_field;
		field->str = FUNC10(value);
		if (field->str == NULL)
			goto out_free_field;
		FUNC3(arg);
		arg = NULL;

		*list = field;
		list = &field->next;

		FUNC5(token);
		type = FUNC8(&token);
	} while (type == EVENT_DELIM && FUNC9(token, ",") == 0);

	*tok = token;
	return type;

out_free_field:
	FUNC4(field);
out_free:
	FUNC3(arg);
	FUNC5(token);
	*tok = NULL;

	return EVENT_ERROR;
}