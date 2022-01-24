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
 int PRINT_SYMBOL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long long) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/ * FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 unsigned long long FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 
 int /*<<< orphan*/  main_dict ; 

__attribute__((used)) static void FUNC11(enum print_arg_type field_type,
			 const char *ev_name,
			 const char *field_name,
			 const char *field_value,
			 const char *field_str)
{
	const char *handler_name = "define_flag_value";
	PyObject *handler, *t, *retval;
	unsigned long long value;
	unsigned n = 0;

	if (field_type == PRINT_SYMBOL)
		handler_name = "define_symbolic_value";

	t = FUNC5(4);
	if (!t)
		FUNC8("couldn't create Python tuple");

	value = FUNC9(field_value);

	FUNC6(t, n++, FUNC4(ev_name));
	FUNC6(t, n++, FUNC4(field_name));
	FUNC6(t, n++, FUNC2(value));
	FUNC6(t, n++, FUNC4(field_str));

	handler = FUNC1(main_dict, handler_name);
	if (handler && FUNC0(handler)) {
		retval = FUNC3(handler, t);
		if (retval == NULL)
			FUNC10(handler_name);
	}

	FUNC7(t);
}