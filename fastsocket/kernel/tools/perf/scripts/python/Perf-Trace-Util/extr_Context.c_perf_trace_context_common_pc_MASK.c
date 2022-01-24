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
struct scripting_context {int dummy; } ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **) ; 
 struct scripting_context* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int) ; 
 int FUNC3 (struct scripting_context*) ; 

__attribute__((used)) static PyObject *FUNC4(PyObject *self, PyObject *args)
{
	static struct scripting_context *scripting_context;
	PyObject *context;
	int retval;

	if (!FUNC0(args, "O", &context))
		return NULL;

	scripting_context = FUNC1(context);
	retval = FUNC3(scripting_context);

	return FUNC2("i", retval);
}