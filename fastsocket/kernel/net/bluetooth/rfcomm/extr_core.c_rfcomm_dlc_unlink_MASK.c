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
struct rfcomm_session {int /*<<< orphan*/  dlcs; } ;
struct rfcomm_dlc {struct rfcomm_session* session; int /*<<< orphan*/  list; int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct rfcomm_dlc*,int /*<<< orphan*/ ,struct rfcomm_session*) ; 
 int /*<<< orphan*/  RFCOMM_IDLE_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct rfcomm_dlc*) ; 
 int /*<<< orphan*/  FUNC5 (struct rfcomm_session*) ; 
 int /*<<< orphan*/  FUNC6 (struct rfcomm_session*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct rfcomm_dlc *d)
{
	struct rfcomm_session *s = d->session;

	FUNC0("dlc %p refcnt %d session %p", d, FUNC1(&d->refcnt), s);

	FUNC2(&d->list);
	d->session = NULL;
	FUNC4(d);

	if (FUNC3(&s->dlcs))
		FUNC6(s, RFCOMM_IDLE_TIMEOUT);

	FUNC5(s);
}