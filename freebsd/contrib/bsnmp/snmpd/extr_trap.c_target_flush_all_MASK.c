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
struct target_param {scalar_t__ status; int /*<<< orphan*/  socket; } ;
struct target_notify {scalar_t__ status; int /*<<< orphan*/  socket; } ;
struct target_address {scalar_t__ status; int /*<<< orphan*/  socket; } ;

/* Variables and functions */
 scalar_t__ RowStatus_active ; 
 struct target_param* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct target_param*) ; 
 int /*<<< orphan*/  ta ; 
 int /*<<< orphan*/  target_addresslist ; 
 int /*<<< orphan*/  target_notifylist ; 
 int /*<<< orphan*/  target_paramlist ; 
 int /*<<< orphan*/  tn ; 
 int /*<<< orphan*/  tp ; 

void
FUNC5(void)
{
	struct target_address *addrs;
	struct target_param *param;
	struct target_notify *notify;

	while ((addrs = FUNC0(&target_addresslist)) != NULL) {
		FUNC2(&target_addresslist, ta);
		if (addrs->status == RowStatus_active)
			FUNC3(addrs->socket);
		FUNC4(addrs);
	}
	FUNC1(&target_addresslist);

	while ((param = FUNC0(&target_paramlist)) != NULL) {
		FUNC2(&target_paramlist, tp);
		FUNC4(param);
	}
	FUNC1(&target_paramlist);

	while ((notify = FUNC0(&target_notifylist)) != NULL) {
		FUNC2(&target_notifylist, tn);
		FUNC4(notify);
	}
	FUNC1(&target_notifylist);
}