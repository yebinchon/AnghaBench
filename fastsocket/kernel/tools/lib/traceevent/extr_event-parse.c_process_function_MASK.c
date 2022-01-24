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
struct print_arg {int dummy; } ;
struct pevent_function_handler {int dummy; } ;
struct event_format {int /*<<< orphan*/  pevent; } ;
typedef  enum event_type { ____Placeholder_event_type } event_type ;

/* Variables and functions */
 int EVENT_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 struct pevent_function_handler* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int is_flag_field ; 
 int is_symbolic_field ; 
 int FUNC3 (struct event_format*,struct print_arg*,char**) ; 
 int FUNC4 (struct event_format*,struct print_arg*,char**) ; 
 int FUNC5 (struct event_format*,struct pevent_function_handler*,struct print_arg*,char**) ; 
 int FUNC6 (struct event_format*,struct print_arg*,char**) ; 
 int FUNC7 (struct event_format*,struct print_arg*,char**) ; 
 int FUNC8 (struct event_format*,struct print_arg*,char**) ; 
 scalar_t__ FUNC9 (char*,char*) ; 

__attribute__((used)) static enum event_type
FUNC10(struct event_format *event, struct print_arg *arg,
		 char *token, char **tok)
{
	struct pevent_function_handler *func;

	if (FUNC9(token, "__print_flags") == 0) {
		FUNC2(token);
		is_flag_field = 1;
		return FUNC4(event, arg, tok);
	}
	if (FUNC9(token, "__print_symbolic") == 0) {
		FUNC2(token);
		is_symbolic_field = 1;
		return FUNC8(event, arg, tok);
	}
	if (FUNC9(token, "__print_hex") == 0) {
		FUNC2(token);
		return FUNC6(event, arg, tok);
	}
	if (FUNC9(token, "__get_str") == 0) {
		FUNC2(token);
		return FUNC7(event, arg, tok);
	}
	if (FUNC9(token, "__get_dynamic_array") == 0) {
		FUNC2(token);
		return FUNC3(event, arg, tok);
	}

	func = FUNC1(event->pevent, token);
	if (func) {
		FUNC2(token);
		return FUNC5(event, func, arg, tok);
	}

	FUNC0("function %s not defined", token);
	FUNC2(token);
	return EVENT_ERROR;
}