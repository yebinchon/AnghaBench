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
struct rfcomm_dlc {int /*<<< orphan*/  refcnt; int /*<<< orphan*/  lock; int /*<<< orphan*/  tx_queue; int /*<<< orphan*/  timer; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct rfcomm_dlc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 struct rfcomm_dlc* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rfcomm_dlc*) ; 
 int /*<<< orphan*/  rfcomm_dlc_timeout ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

struct rfcomm_dlc *FUNC7(gfp_t prio)
{
	struct rfcomm_dlc *d = FUNC2(sizeof(*d), prio);

	if (!d)
		return NULL;

	FUNC4(&d->timer, rfcomm_dlc_timeout, (unsigned long)d);

	FUNC5(&d->tx_queue);
	FUNC6(&d->lock);
	FUNC1(&d->refcnt, 1);

	FUNC3(d);

	FUNC0("%p", d);

	return d;
}