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
struct redirtab {scalar_t__* renamed; scalar_t__ empty_redirs; struct redirtab* next; int /*<<< orphan*/  fd0_redirected; } ;

/* Variables and functions */
 scalar_t__ EMPTY ; 
 int /*<<< orphan*/  INTOFF ; 
 int /*<<< orphan*/  INTON ; 
 int /*<<< orphan*/  FUNC0 (struct redirtab*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 scalar_t__ empty_redirs ; 
 int /*<<< orphan*/  fd0_redirected ; 
 struct redirtab* redirlist ; 

void
FUNC3(void)
{
	struct redirtab *rp = redirlist;
	int i;

	INTOFF;
	if (empty_redirs > 0) {
		empty_redirs--;
		INTON;
		return;
	}
	for (i = 0 ; i < 10 ; i++) {
		if (rp->renamed[i] != EMPTY) {
			if (rp->renamed[i] >= 0) {
				FUNC2(rp->renamed[i], i);
				FUNC1(rp->renamed[i]);
			} else {
				FUNC1(i);
			}
		}
	}
	fd0_redirected = rp->fd0_redirected;
	empty_redirs = rp->empty_redirs;
	redirlist = rp->next;
	FUNC0(rp);
	INTON;
}