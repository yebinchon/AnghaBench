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
struct user_key_payload {int /*<<< orphan*/  rcu; } ;
struct TYPE_2__ {struct user_key_payload* data; } ;
struct key {TYPE_1__ payload; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct key*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct key*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  user_update_rcu_disposal ; 

void FUNC3(struct key *key)
{
	struct user_key_payload *upayload = key->payload.data;

	/* clear the quota */
	FUNC1(key, 0);

	if (upayload) {
		FUNC2(key, NULL);
		FUNC0(&upayload->rcu, user_update_rcu_disposal);
	}
}