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
typedef  int /*<<< orphan*/  uid_t ;
struct user_struct {int dummy; } ;
struct user_namespace {int dummy; } ;

/* Variables and functions */
 struct user_namespace* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct user_struct* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uidhash_lock ; 
 int /*<<< orphan*/  FUNC4 (struct user_namespace*,int /*<<< orphan*/ ) ; 

struct user_struct *FUNC5(uid_t uid)
{
	struct user_struct *ret;
	unsigned long flags;
	struct user_namespace *ns = FUNC0();

	FUNC1(&uidhash_lock, flags);
	ret = FUNC3(uid, FUNC4(ns, uid));
	FUNC2(&uidhash_lock, flags);
	return ret;
}