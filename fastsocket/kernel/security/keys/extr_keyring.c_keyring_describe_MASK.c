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
struct seq_file {int dummy; } ;
struct keyring_list {int /*<<< orphan*/  maxkeys; int /*<<< orphan*/  nkeys; } ;
struct TYPE_2__ {int /*<<< orphan*/  subscriptions; } ;
struct key {char* description; TYPE_1__ payload; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct key const*) ; 
 struct keyring_list* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,char*) ; 

__attribute__((used)) static void FUNC6(const struct key *keyring, struct seq_file *m)
{
	struct keyring_list *klist;

	if (keyring->description)
		FUNC5(m, keyring->description);
	else
		FUNC5(m, "[anon]");

	if (FUNC0(keyring)) {
		FUNC2();
		klist = FUNC1(keyring->payload.subscriptions);
		if (klist)
			FUNC4(m, ": %u/%u", klist->nkeys, klist->maxkeys);
		else
			FUNC5(m, ": empty");
		FUNC3();
	}
}