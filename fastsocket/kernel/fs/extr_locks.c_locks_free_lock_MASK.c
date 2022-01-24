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
struct file_lock {int /*<<< orphan*/  fl_link; int /*<<< orphan*/  fl_block; int /*<<< orphan*/  fl_wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  filelock_cache ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct file_lock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct file_lock*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct file_lock *fl)
{
	FUNC0(FUNC4(&fl->fl_wait));
	FUNC0(!FUNC2(&fl->fl_block));
	FUNC0(!FUNC2(&fl->fl_link));

	FUNC3(fl);
	FUNC1(filelock_cache, fl);
}