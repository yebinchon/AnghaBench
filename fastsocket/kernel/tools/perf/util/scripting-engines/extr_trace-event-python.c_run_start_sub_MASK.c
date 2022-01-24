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
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/ * main_dict ; 
 int /*<<< orphan*/ * main_module ; 

__attribute__((used)) static int FUNC9(void)
{
	PyObject *handler, *retval;
	int err = 0;

	main_module = FUNC2("__main__");
	if (main_module == NULL)
		return -1;
	FUNC6(main_module);

	main_dict = FUNC3(main_module);
	if (main_dict == NULL) {
		err = -1;
		goto error;
	}
	FUNC6(main_dict);

	handler = FUNC1(main_dict, "trace_begin");
	if (handler == NULL || !FUNC0(handler))
		goto out;

	retval = FUNC4(handler, NULL);
	if (retval == NULL)
		FUNC8("trace_begin");

	FUNC5(retval);
	return err;
error:
	FUNC7(main_dict);
	FUNC7(main_module);
out:
	return err;
}