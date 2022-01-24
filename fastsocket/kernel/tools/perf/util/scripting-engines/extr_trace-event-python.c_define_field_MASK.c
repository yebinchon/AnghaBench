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
typedef  enum print_arg_type { ____Placeholder_print_arg_type } print_arg_type ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int PRINT_FLAGS ; 
 int PRINT_SYMBOL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 
 int /*<<< orphan*/  main_dict ; 

__attribute__((used)) static void FUNC9(enum print_arg_type field_type,
			 const char *ev_name,
			 const char *field_name,
			 const char *delim)
{
	const char *handler_name = "define_flag_field";
	PyObject *handler, *t, *retval;
	unsigned n = 0;

	if (field_type == PRINT_SYMBOL)
		handler_name = "define_symbolic_field";

	if (field_type == PRINT_FLAGS)
		t = FUNC4(3);
	else
		t = FUNC4(2);
	if (!t)
		FUNC7("couldn't create Python tuple");

	FUNC5(t, n++, FUNC3(ev_name));
	FUNC5(t, n++, FUNC3(field_name));
	if (field_type == PRINT_FLAGS)
		FUNC5(t, n++, FUNC3(delim));

	handler = FUNC1(main_dict, handler_name);
	if (handler && FUNC0(handler)) {
		retval = FUNC2(handler, t);
		if (retval == NULL)
			FUNC8(handler_name);
	}

	FUNC6(t);
}