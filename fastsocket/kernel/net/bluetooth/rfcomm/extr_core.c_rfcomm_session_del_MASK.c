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
struct rfcomm_session {int state; int /*<<< orphan*/  sock; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int BT_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (char*,struct rfcomm_session*,int) ; 
 int BT_LISTEN ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC1 (struct rfcomm_session*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rfcomm_session*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rfcomm_session*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct rfcomm_session *s)
{
	int state = s->state;

	FUNC0("session %p state %ld", s, s->state);

	FUNC2(&s->list);

	if (state == BT_CONNECTED)
		FUNC4(s, 0);

	FUNC5(s);
	FUNC6(s->sock);
	FUNC1(s);

	if (state != BT_LISTEN)
		FUNC3(THIS_MODULE);
}