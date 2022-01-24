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
struct file_lock {int /*<<< orphan*/  fl_lmops; int /*<<< orphan*/  fl_ops; int /*<<< orphan*/  fl_file; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct file_lock*,struct file_lock*) ; 
 int /*<<< orphan*/  FUNC1 (struct file_lock*,struct file_lock*) ; 
 int /*<<< orphan*/  FUNC2 (struct file_lock*) ; 

void FUNC3(struct file_lock *new, struct file_lock *fl)
{
	FUNC2(new);

	FUNC0(new, fl);
	new->fl_file = fl->fl_file;
	new->fl_ops = fl->fl_ops;
	new->fl_lmops = fl->fl_lmops;

	FUNC1(new, fl);
}