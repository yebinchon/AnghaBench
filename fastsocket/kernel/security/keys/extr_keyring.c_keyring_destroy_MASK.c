#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct keyring_list {int nkeys; int /*<<< orphan*/ * keys; } ;
struct TYPE_5__ {int /*<<< orphan*/  subscriptions; } ;
struct TYPE_7__ {int /*<<< orphan*/ * next; } ;
struct TYPE_6__ {TYPE_3__ link; } ;
struct key {TYPE_1__ payload; TYPE_2__ type_data; scalar_t__ description; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  keyring_name_lock ; 
 int /*<<< orphan*/  FUNC1 (struct keyring_list*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 struct keyring_list* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct key *keyring)
{
	struct keyring_list *klist;
	int loop;

	if (keyring->description) {
		FUNC5(&keyring_name_lock);

		if (keyring->type_data.link.next != NULL &&
		    !FUNC3(&keyring->type_data.link))
			FUNC2(&keyring->type_data.link);

		FUNC6(&keyring_name_lock);
	}

	klist = FUNC4(keyring->payload.subscriptions);
	if (klist) {
		for (loop = klist->nkeys - 1; loop >= 0; loop--)
			FUNC0(klist->keys[loop]);
		FUNC1(klist);
	}
}