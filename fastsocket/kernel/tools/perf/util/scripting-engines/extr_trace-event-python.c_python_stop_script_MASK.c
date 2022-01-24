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
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  main_dict ; 
 int /*<<< orphan*/  main_module ; 

__attribute__((used)) static int FUNC7(void)
{
	PyObject *handler, *retval;
	int err = 0;

	handler = FUNC1(main_dict, "trace_end");
	if (handler == NULL || !FUNC0(handler))
		goto out;

	retval = FUNC2(handler, NULL);
	if (retval == NULL)
		FUNC6("trace_end");
	else
		FUNC3(retval);
out:
	FUNC5(main_dict);
	FUNC5(main_module);
	FUNC4();

	return err;
}