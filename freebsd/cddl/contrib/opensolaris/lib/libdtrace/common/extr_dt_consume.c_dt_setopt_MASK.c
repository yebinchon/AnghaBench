#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  optdata ;
struct TYPE_4__ {char const* dtsda_option; int /*<<< orphan*/ * dtsda_handle; int /*<<< orphan*/  const* dtsda_probe; int /*<<< orphan*/  dtsda_newval; int /*<<< orphan*/  dtsda_oldval; } ;
typedef  TYPE_1__ dtrace_setoptdata_t ;
typedef  int /*<<< orphan*/  dtrace_probedata_t ;
typedef  int /*<<< orphan*/  dtrace_hdl_t ;

/* Variables and functions */
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,char const*,char const*,char const*) ; 
 int FUNC9 (char const*) ; 

int
FUNC10(dtrace_hdl_t *dtp, const dtrace_probedata_t *data,
    const char *option, const char *value)
{
	int len, rval;
	char *msg;
	const char *errstr;
	dtrace_setoptdata_t optdata;

	FUNC1(&optdata, sizeof (optdata));
	(void) FUNC6(dtp, option, &optdata.dtsda_oldval);

	if (FUNC7(dtp, option, value) == 0) {
		(void) FUNC6(dtp, option, &optdata.dtsda_newval);
		optdata.dtsda_probe = data;
		optdata.dtsda_option = option;
		optdata.dtsda_handle = dtp;

		if ((rval = FUNC3(dtp, &optdata)) != 0)
			return (rval);

		return (0);
	}

	errstr = FUNC4(dtp, FUNC5(dtp));
	len = FUNC9(option) + FUNC9(value) + FUNC9(errstr) + 80;
	msg = FUNC0(len);

	(void) FUNC8(msg, len, "couldn't set option \"%s\" to \"%s\": %s\n",
	    option, value, errstr);

	if ((rval = FUNC2(dtp, data, msg)) == 0)
		return (0);

	return (rval);
}