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
struct ubifs_wbuf {scalar_t__ delta; int /*<<< orphan*/  softlimit; int /*<<< orphan*/  timer; int /*<<< orphan*/  jhead; scalar_t__ no_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  HRTIMER_MODE_REL ; 
 int /*<<< orphan*/  USEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct ubifs_wbuf *wbuf)
{
	FUNC6(!FUNC3(&wbuf->timer));

	if (wbuf->no_timer)
		return;
	FUNC0("set timer for jhead %s, %llu-%llu millisecs",
	       FUNC1(wbuf->jhead),
	       FUNC2(FUNC5(wbuf->softlimit), USEC_PER_SEC),
	       FUNC2(FUNC5(wbuf->softlimit) + wbuf->delta,
		       USEC_PER_SEC));
	FUNC4(&wbuf->timer, wbuf->softlimit, wbuf->delta,
			       HRTIMER_MODE_REL);
}