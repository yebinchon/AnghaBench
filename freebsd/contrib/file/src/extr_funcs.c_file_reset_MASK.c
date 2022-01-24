#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * pbuf; int /*<<< orphan*/ * buf; } ;
struct magic_set {int error; int /*<<< orphan*/  event_flags; TYPE_1__ o; int /*<<< orphan*/ ** mlist; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_HAD_ERR ; 
 int /*<<< orphan*/  FUNC0 (struct magic_set*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int
FUNC2(struct magic_set *ms, int checkloaded)
{
	if (checkloaded && ms->mlist[0] == NULL) {
		FUNC0(ms, 0, "no magic files loaded");
		return -1;
	}
	if (ms->o.buf) {
		FUNC1(ms->o.buf);
		ms->o.buf = NULL;
	}
	if (ms->o.pbuf) {
		FUNC1(ms->o.pbuf);
		ms->o.pbuf = NULL;
	}
	ms->event_flags &= ~EVENT_HAD_ERR;
	ms->error = -1;
	return 0;
}