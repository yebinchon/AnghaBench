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
struct xenbus_transaction {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  transaction_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  XS_TRANSACTION_END ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xenbus_transaction,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 TYPE_1__ xs_state ; 

int FUNC4(struct xenbus_transaction t, int abort)
{
	char abortstr[2];
	int err;

	if (abort)
		FUNC0(abortstr, "F");
	else
		FUNC0(abortstr, "T");

	err = FUNC2(FUNC3(t, XS_TRANSACTION_END, abortstr, NULL));

	FUNC1(&xs_state.transaction_mutex);

	return err;
}