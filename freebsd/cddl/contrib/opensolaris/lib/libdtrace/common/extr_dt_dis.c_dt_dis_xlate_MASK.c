#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint_t ;
struct TYPE_9__ {int dtdo_xlmlen; TYPE_3__** dtdo_xlmtab; } ;
typedef  TYPE_4__ dtrace_difo_t ;
typedef  int /*<<< orphan*/  dif_instr_t ;
struct TYPE_8__ {char* dn_membname; TYPE_2__* dn_membexpr; } ;
struct TYPE_7__ {TYPE_1__* dn_xlator; } ;
struct TYPE_6__ {scalar_t__ dx_id; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static void
FUNC3(const dtrace_difo_t *dp,
    const char *name, dif_instr_t in, FILE *fp)
{
	uint_t xlr = FUNC1(in);

	(void) FUNC2(fp, "%-4s DT_XLREF[%u], %%r%u",
	    name, xlr, FUNC0(in));

	if (xlr < dp->dtdo_xlmlen) {
		(void) FUNC2(fp, "\t\t! DT_XLREF[%u] = %u.%s", xlr,
		    (uint_t)dp->dtdo_xlmtab[xlr]->dn_membexpr->dn_xlator->dx_id,
		    dp->dtdo_xlmtab[xlr]->dn_membname);
	}
}