#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct lmodule {int dummy; } ;
struct TYPE_9__ {TYPE_1__* dep; } ;
struct TYPE_8__ {int /*<<< orphan*/  idx; int /*<<< orphan*/  obj; } ;

/* Variables and functions */
 int ASN_OIDSTRLEN ; 
 int /*<<< orphan*/  COMM_INITIALIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int SNMP_ERR_NOERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  community ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 scalar_t__ ignore ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ input_push ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct lmodule*) ; 
 TYPE_2__* snmp_ctx ; 
 int FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 TYPE_2__* FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,...) ; 

int
FUNC15(const char *fname, struct lmodule *lodmod)
{
	int err;
	char objbuf[ASN_OIDSTRLEN];
	char idxbuf[ASN_OIDSTRLEN];

	ignore = 0;

	input_push = 0;

	if (FUNC1())
		return (-1);
	if (FUNC7(fname, 0) == -1) {
		FUNC14(LOG_ERR, "%s: %m", fname);
		return (-1);
	}
	FUNC0();
	community = COMM_INITIALIZE;

	if ((snmp_ctx = FUNC13()) == NULL) {
		FUNC6();
		FUNC14(LOG_ERR, "%m");
		return (-1);
	}

	if (FUNC1()) {
		FUNC4();
		FUNC6();
		FUNC8();
		FUNC5(snmp_ctx);
		return (-1);
	}
	FUNC9(lodmod);
	FUNC0();

	if ((err = FUNC10(snmp_ctx)) != SNMP_ERR_NOERROR) {
		FUNC14(LOG_ERR, "init dep failed: %u %s %s", err,
		    FUNC2(&snmp_ctx->dep->obj, objbuf),
		    FUNC2(&snmp_ctx->dep->idx, idxbuf));
		FUNC12(snmp_ctx);
		FUNC4();
		FUNC6();
		FUNC8();
		FUNC5(snmp_ctx);
		return (-1);
	}

	FUNC3();
	FUNC11(snmp_ctx);

	FUNC8();

	FUNC5(snmp_ctx);

	return (0);
}