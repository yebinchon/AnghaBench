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
struct file {int /*<<< orphan*/  f_lock; int /*<<< orphan*/  f_flags; } ;
struct fasync_struct {int fa_fd; struct fasync_struct* fa_next; struct file* fa_file; int /*<<< orphan*/  magic; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FASYNC ; 
 int /*<<< orphan*/  FASYNC_MAGIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  fasync_cache ; 
 int /*<<< orphan*/  fasync_lock ; 
 struct fasync_struct* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct fasync_struct*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(int fd, struct file *filp, struct fasync_struct **fapp)
{
	struct fasync_struct *new, *fa, **fp;
	int result = 0;

	new = FUNC0(fasync_cache, GFP_KERNEL);
	if (!new)
		return -ENOMEM;

	FUNC2(&filp->f_lock);
	FUNC4(&fasync_lock);
	for (fp = fapp; (fa = *fp) != NULL; fp = &fa->fa_next) {
		if (fa->fa_file != filp)
			continue;
		fa->fa_fd = fd;
		FUNC1(fasync_cache, new);
		goto out;
	}

	new->magic = FASYNC_MAGIC;
	new->fa_file = filp;
	new->fa_fd = fd;
	new->fa_next = *fapp;
	*fapp = new;
	result = 1;
	filp->f_flags |= FASYNC;

out:
	FUNC5(&fasync_lock);
	FUNC3(&filp->f_lock);
	return result;
}