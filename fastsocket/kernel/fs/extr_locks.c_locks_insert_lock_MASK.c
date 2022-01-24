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
struct file_lock {struct file_lock* fl_next; int /*<<< orphan*/  fl_nspid; int /*<<< orphan*/  fl_link; } ;

/* Variables and functions */
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  file_lock_list ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct file_lock **pos, struct file_lock *fl)
{
	FUNC1(&fl->fl_link, &file_lock_list);

	fl->fl_nspid = FUNC0(FUNC2(current));

	/* insert into file's list */
	fl->fl_next = *pos;
	*pos = fl;
}