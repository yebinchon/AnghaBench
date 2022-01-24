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
struct dentry {int /*<<< orphan*/  d_sb; } ;
struct autofs_sb_info {int /*<<< orphan*/  lookup_lock; } ;
struct autofs_info {int /*<<< orphan*/  expiring; int /*<<< orphan*/  active; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct dentry*) ; 
 struct autofs_info* FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct autofs_info*) ; 
 struct autofs_sb_info* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct dentry *de)
{
	struct autofs_info *inf;

	FUNC0("releasing %p", de);

	inf = FUNC1(de);
	if (inf) {
		struct autofs_sb_info *sbi = FUNC3(de->d_sb);
		if (sbi) {
			FUNC6(&sbi->lookup_lock);
			if (!FUNC5(&inf->active))
				FUNC4(&inf->active);
			if (!FUNC5(&inf->expiring))
				FUNC4(&inf->expiring);
			FUNC7(&sbi->lookup_lock);
		}
		FUNC2(inf);
	}
}