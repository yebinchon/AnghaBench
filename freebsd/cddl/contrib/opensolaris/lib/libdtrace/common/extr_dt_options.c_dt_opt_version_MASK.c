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
typedef  int /*<<< orphan*/  dtrace_hdl_t ;
typedef  int /*<<< orphan*/  dt_version_t ;

/* Variables and functions */
 int /*<<< orphan*/  EDT_BADOPTVAL ; 
 int /*<<< orphan*/  EDT_VERSINVAL ; 
 int /*<<< orphan*/  EDT_VERSUNDEF ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(dtrace_hdl_t *dtp, const char *arg, uintptr_t option)
{
	dt_version_t v;

	if (arg == NULL)
		return (FUNC1(dtp, EDT_BADOPTVAL));

	if (FUNC3(arg, &v) == -1)
		return (FUNC1(dtp, EDT_VERSINVAL));

	if (!FUNC2(v))
		return (FUNC1(dtp, EDT_VERSUNDEF));

	return (FUNC0(dtp, v));
}