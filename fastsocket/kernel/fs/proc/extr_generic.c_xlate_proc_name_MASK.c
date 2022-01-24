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
struct proc_dir_entry {struct proc_dir_entry* next; struct proc_dir_entry* subdir; } ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ FUNC0 (int,char const*,struct proc_dir_entry*) ; 
 struct proc_dir_entry proc_root ; 
 int /*<<< orphan*/  proc_subdir_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (char const*,char) ; 

__attribute__((used)) static int FUNC4(const char *name,
			   struct proc_dir_entry **ret, const char **residual)
{
	const char     		*cp = name, *next;
	struct proc_dir_entry	*de;
	int			len;
	int 			rtn = 0;

	de = *ret;
	if (!de)
		de = &proc_root;

	FUNC1(&proc_subdir_lock);
	while (1) {
		next = FUNC3(cp, '/');
		if (!next)
			break;

		len = next - cp;
		for (de = de->subdir; de ; de = de->next) {
			if (FUNC0(len, cp, de))
				break;
		}
		if (!de) {
			rtn = -ENOENT;
			goto out;
		}
		cp += len + 1;
	}
	*residual = cp;
	*ret = de;
out:
	FUNC2(&proc_subdir_lock);
	return rtn;
}