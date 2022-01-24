#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int dn_flags; int /*<<< orphan*/  dn_type; int /*<<< orphan*/  dn_ctfp; int /*<<< orphan*/ * dn_ident; } ;
typedef  TYPE_1__ dt_node_t ;
struct TYPE_6__ {int /*<<< orphan*/  di_kind; } ;

/* Variables and functions */
 int DT_NF_USERLAND ; 
 TYPE_4__* FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__ const*) ; 
 char const* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t) ; 
 size_t FUNC4 (char*,size_t,char*,...) ; 

const char *
FUNC5(const dt_node_t *dnp, char *buf, size_t len)
{
	if (FUNC2(dnp) && dnp->dn_ident != NULL) {
		(void) FUNC4(buf, len, "%s",
		    FUNC1(FUNC0(dnp->dn_ident)->di_kind));
		return (buf);
	}

	if (dnp->dn_flags & DT_NF_USERLAND) {
		size_t n = FUNC4(buf, len, "userland ");
		len = len > n ? len - n : 0;
		(void) FUNC3(dnp->dn_ctfp, dnp->dn_type, buf + n, len);
		return (buf);
	}

	return (FUNC3(dnp->dn_ctfp, dnp->dn_type, buf, len));
}