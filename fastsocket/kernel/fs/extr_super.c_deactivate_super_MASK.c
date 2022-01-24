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
struct super_block {int /*<<< orphan*/  s_umount; int /*<<< orphan*/  s_active; struct file_system_type* s_type; } ;
struct file_system_type {int /*<<< orphan*/  (* kill_sb ) (struct super_block*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct file_system_type*) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*,int /*<<< orphan*/ ) ; 

void FUNC6(struct super_block *s)
{
	struct file_system_type *fs = s->s_type;
	if (FUNC0(&s->s_active)) {
		FUNC5(s, 0);
		FUNC1(&s->s_umount);
		fs->kill_sb(s);
		FUNC2(fs);
		FUNC3(s);
	}
}