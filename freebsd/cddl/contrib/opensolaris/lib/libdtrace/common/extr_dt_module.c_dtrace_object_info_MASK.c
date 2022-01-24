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
typedef  int /*<<< orphan*/  dtrace_objinfo_t ;
typedef  int /*<<< orphan*/  dtrace_hdl_t ;
typedef  int /*<<< orphan*/  dt_module_t ;

/* Variables and functions */
 char const* DTRACE_OBJ_EVERY ; 
 char const* DTRACE_OBJ_KMODS ; 
 char const* DTRACE_OBJ_UMODS ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC4(dtrace_hdl_t *dtp, const char *object, dtrace_objinfo_t *dto)
{
	dt_module_t *dmp;

	if (object == DTRACE_OBJ_EVERY || object == DTRACE_OBJ_KMODS ||
	    object == DTRACE_OBJ_UMODS || dto == NULL)
		return (FUNC3(dtp, EINVAL));

	if ((dmp = FUNC0(dtp, object)) == NULL)
		return (-1); /* dt_errno is set for us */

	if (FUNC2(dtp, dmp) == -1)
		return (-1); /* dt_errno is set for us */

	(void) FUNC1(dmp, dto);
	return (0);
}