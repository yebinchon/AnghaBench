#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dtrace_hdl_t ;
struct TYPE_7__ {scalar_t__ dpr_pid; } ;
typedef  TYPE_1__ dt_proc_t ;
struct TYPE_8__ {char* dprn_errmsg; struct TYPE_8__* dprn_next; TYPE_1__* dprn_dpr; } ;
typedef  TYPE_2__ dt_proc_notify_t ;
struct TYPE_9__ {int /*<<< orphan*/  dph_lock; int /*<<< orphan*/  dph_cv; TYPE_2__* dph_notify; } ;
typedef  TYPE_3__ dt_proc_hash_t ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int) ; 

__attribute__((used)) static void
FUNC6(dtrace_hdl_t *dtp, dt_proc_hash_t *dph, dt_proc_t *dpr,
    const char *msg)
{
	dt_proc_notify_t *dprn = FUNC0(dtp, sizeof (dt_proc_notify_t));

	if (dprn == NULL) {
		FUNC1("failed to allocate notification for %d %s\n",
		    (int)dpr->dpr_pid, msg);
	} else {
		dprn->dprn_dpr = dpr;
		if (msg == NULL)
			dprn->dprn_errmsg[0] = '\0';
		else
			(void) FUNC5(dprn->dprn_errmsg, msg,
			    sizeof (dprn->dprn_errmsg));

		(void) FUNC3(&dph->dph_lock);

		dprn->dprn_next = dph->dph_notify;
		dph->dph_notify = dprn;

		(void) FUNC2(&dph->dph_cv);
		(void) FUNC4(&dph->dph_lock);
	}
}