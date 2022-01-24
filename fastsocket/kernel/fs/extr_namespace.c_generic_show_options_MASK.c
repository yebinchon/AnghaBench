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
struct vfsmount {TYPE_1__* mnt_sb; } ;
struct seq_file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_options; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char const*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char) ; 

int FUNC5(struct seq_file *m, struct vfsmount *mnt)
{
	const char *options;

	FUNC2();
	options = FUNC1(mnt->mnt_sb->s_options);

	if (options != NULL && options[0]) {
		FUNC4(m, ',');
		FUNC0(m, options);
	}
	FUNC3();

	return 0;
}