#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* lvb; } ;
struct user_lock_res {scalar_t__ l_level; int /*<<< orphan*/  l_lock; TYPE_1__ l_lksb; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {struct user_lock_res ip_lockres; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_2__* FUNC1 (struct inode*) ; 
 unsigned int DLM_LVB_LEN ; 
 scalar_t__ LKM_EXMODE ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct inode *inode,
			const char *val,
			unsigned int len)
{
	struct user_lock_res *lockres = &FUNC1(inode)->ip_lockres;
	char *lvb = lockres->l_lksb.lvb;

	FUNC0(len > DLM_LVB_LEN);

	FUNC3(&lockres->l_lock);

	FUNC0(lockres->l_level < LKM_EXMODE);
	FUNC2(lvb, val, len);

	FUNC4(&lockres->l_lock);
}