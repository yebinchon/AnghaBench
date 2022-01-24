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
struct user_struct {int /*<<< orphan*/  session_keyring; int /*<<< orphan*/  uid_keyring; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct user_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct user_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  uid_cachep ; 
 int /*<<< orphan*/  FUNC4 (struct user_struct*) ; 
 int /*<<< orphan*/  uidhash_lock ; 

__attribute__((used)) static void FUNC5(struct user_struct *up, unsigned long flags)
{
	FUNC4(up);
	FUNC3(&uidhash_lock, flags);
	FUNC2(up);
	FUNC0(up->uid_keyring);
	FUNC0(up->session_keyring);
	FUNC1(uid_cachep, up);
}