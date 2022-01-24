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
struct xenbus_transaction {int /*<<< orphan*/  id; } ;
struct TYPE_2__ {int /*<<< orphan*/  transaction_mutex; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  XBT_NIL ; 
 int /*<<< orphan*/  XS_TRANSACTION_START ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 TYPE_1__ xs_state ; 

int FUNC7(struct xenbus_transaction *t)
{
	char *id_str;

	FUNC2(&xs_state.transaction_mutex);

	id_str = FUNC6(XBT_NIL, XS_TRANSACTION_START, "", NULL);
	if (FUNC0(id_str)) {
		FUNC5(&xs_state.transaction_mutex);
		return FUNC1(id_str);
	}

	t->id = FUNC4(id_str, NULL, 0);
	FUNC3(id_str);
	return 0;
}