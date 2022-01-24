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
struct keyring_list {int /*<<< orphan*/  rcu; } ;
struct TYPE_2__ {int /*<<< orphan*/  subscriptions; } ;
struct key {TYPE_1__ payload; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct key*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  keyring_clear_rcu_disposal ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct keyring_list* FUNC3 (struct key*) ; 

__attribute__((used)) static void FUNC4(struct key *keyring)
{
	struct keyring_list *klist;

	klist = FUNC3(keyring);

	/* adjust the quota */
	FUNC1(keyring, 0);

	if (klist) {
		FUNC2(keyring->payload.subscriptions, NULL);
		FUNC0(&klist->rcu, keyring_clear_rcu_disposal);
	}
}