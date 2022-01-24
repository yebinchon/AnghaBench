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
struct key_user {int /*<<< orphan*/  user_ns; int /*<<< orphan*/  node; int /*<<< orphan*/  usage; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  key_user_lock ; 
 int /*<<< orphan*/  key_user_tree ; 
 int /*<<< orphan*/  FUNC1 (struct key_user*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct key_user *user)
{
	if (FUNC0(&user->usage, &key_user_lock)) {
		FUNC3(&user->node, &key_user_tree);
		FUNC4(&key_user_lock);
		FUNC2(user->user_ns);

		FUNC1(user);
	}
}