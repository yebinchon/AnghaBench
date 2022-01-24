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
struct proc_dir_entry {char* name; int namelen; int /*<<< orphan*/  pde_openers; int /*<<< orphan*/ * pde_unload_completion; int /*<<< orphan*/  pde_unload_lock; scalar_t__ pde_users; int /*<<< orphan*/  count; int /*<<< orphan*/  nlink; int /*<<< orphan*/  mode; } ;
typedef  int /*<<< orphan*/  nlink_t ;
typedef  int /*<<< orphan*/  mode_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 struct proc_dir_entry* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct proc_dir_entry*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char const*,char) ; 
 int FUNC7 (char const*) ; 
 scalar_t__ FUNC8 (char const*,struct proc_dir_entry**,char const**) ; 

__attribute__((used)) static struct proc_dir_entry *FUNC9(struct proc_dir_entry **parent,
					  const char *name,
					  mode_t mode,
					  nlink_t nlink)
{
	struct proc_dir_entry *ent = NULL;
	const char *fn = name;
	int len;

	/* make sure name is valid */
	if (!name || !FUNC7(name)) goto out;

	if (FUNC8(name, parent, &fn) != 0)
		goto out;

	/* At this point there must not be any '/' characters beyond *fn */
	if (FUNC6(fn, '/'))
		goto out;

	len = FUNC7(fn);

	ent = FUNC2(sizeof(struct proc_dir_entry) + len + 1, GFP_KERNEL);
	if (!ent) goto out;

	FUNC4(ent, 0, sizeof(struct proc_dir_entry));
	FUNC3(((char *) ent) + sizeof(struct proc_dir_entry), fn, len + 1);
	ent->name = ((char *) ent) + sizeof(*ent);
	ent->namelen = len;
	ent->mode = mode;
	ent->nlink = nlink;
	FUNC1(&ent->count, 1);
	ent->pde_users = 0;
	FUNC5(&ent->pde_unload_lock);
	ent->pde_unload_completion = NULL;
	FUNC0(&ent->pde_openers);
 out:
	return ent;
}