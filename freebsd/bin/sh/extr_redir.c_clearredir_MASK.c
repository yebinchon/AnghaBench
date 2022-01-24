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
struct redirtab {scalar_t__* renamed; struct redirtab* next; } ;

/* Variables and functions */
 scalar_t__ EMPTY ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 struct redirtab* redirlist ; 

void
FUNC1(void)
{
	struct redirtab *rp;
	int i;

	for (rp = redirlist ; rp ; rp = rp->next) {
		for (i = 0 ; i < 10 ; i++) {
			if (rp->renamed[i] >= 0) {
				FUNC0(rp->renamed[i]);
			}
			rp->renamed[i] = EMPTY;
		}
	}
}