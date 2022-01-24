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
struct seq_file {int dummy; } ;
struct ocfs2_lock_res {scalar_t__ l_type; int /*<<< orphan*/  l_lksb; int /*<<< orphan*/  l_blocking; int /*<<< orphan*/  l_requested; int /*<<< orphan*/  l_ex_holders; int /*<<< orphan*/  l_ro_holders; int /*<<< orphan*/  l_unlock_action; int /*<<< orphan*/  l_action; int /*<<< orphan*/  l_flags; int /*<<< orphan*/  l_level; int /*<<< orphan*/  l_name; } ;

/* Variables and functions */
 int DLM_LVB_LEN ; 
 int EINVAL ; 
 scalar_t__ OCFS2_DENTRY_LOCK_INO_START ; 
 int /*<<< orphan*/  OCFS2_DLM_DEBUG_STR_VERSION ; 
 int /*<<< orphan*/  OCFS2_LOCK_ID_MAX_LEN ; 
 scalar_t__ OCFS2_LOCK_TYPE_DENTRY ; 
 int /*<<< orphan*/  FUNC0 (struct ocfs2_lock_res*) ; 
 int /*<<< orphan*/  FUNC1 (struct ocfs2_lock_res*) ; 
 int /*<<< orphan*/  FUNC2 (struct ocfs2_lock_res*) ; 
 int /*<<< orphan*/  FUNC3 (struct ocfs2_lock_res*) ; 
 int /*<<< orphan*/  FUNC4 (struct ocfs2_lock_res*) ; 
 int /*<<< orphan*/  FUNC5 (struct ocfs2_lock_res*) ; 
 int /*<<< orphan*/  FUNC6 (struct ocfs2_lock_res*) ; 
 int /*<<< orphan*/  FUNC7 (struct ocfs2_lock_res*) ; 
 int /*<<< orphan*/  FUNC8 (struct ocfs2_lock_res*) ; 
 char* FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct ocfs2_lock_res*) ; 
 int /*<<< orphan*/  FUNC11 (struct seq_file*,char*,...) ; 

__attribute__((used)) static int FUNC12(struct seq_file *m, void *v)
{
	int i;
	char *lvb;
	struct ocfs2_lock_res *lockres = v;

	if (!lockres)
		return -EINVAL;

	FUNC11(m, "0x%x\t", OCFS2_DLM_DEBUG_STR_VERSION);

	if (lockres->l_type == OCFS2_LOCK_TYPE_DENTRY)
		FUNC11(m, "%.*s%08x\t", OCFS2_DENTRY_LOCK_INO_START - 1,
			   lockres->l_name,
			   (unsigned int)FUNC10(lockres));
	else
		FUNC11(m, "%.*s\t", OCFS2_LOCK_ID_MAX_LEN, lockres->l_name);

	FUNC11(m, "%d\t"
		   "0x%lx\t"
		   "0x%x\t"
		   "0x%x\t"
		   "%u\t"
		   "%u\t"
		   "%d\t"
		   "%d\t",
		   lockres->l_level,
		   lockres->l_flags,
		   lockres->l_action,
		   lockres->l_unlock_action,
		   lockres->l_ro_holders,
		   lockres->l_ex_holders,
		   lockres->l_requested,
		   lockres->l_blocking);

	/* Dump the raw LVB */
	lvb = FUNC9(&lockres->l_lksb);
	for(i = 0; i < DLM_LVB_LEN; i++)
		FUNC11(m, "0x%x\t", lvb[i]);

#ifdef CONFIG_OCFS2_FS_STATS
# define lock_num_prmode(_l)		(_l)->l_lock_num_prmode
# define lock_num_exmode(_l)		(_l)->l_lock_num_exmode
# define lock_num_prmode_failed(_l)	(_l)->l_lock_num_prmode_failed
# define lock_num_exmode_failed(_l)	(_l)->l_lock_num_exmode_failed
# define lock_total_prmode(_l)		(_l)->l_lock_total_prmode
# define lock_total_exmode(_l)		(_l)->l_lock_total_exmode
# define lock_max_prmode(_l)		(_l)->l_lock_max_prmode
# define lock_max_exmode(_l)		(_l)->l_lock_max_exmode
# define lock_refresh(_l)		(_l)->l_lock_refresh
#else
# define lock_num_prmode(_l)		(0ULL)
# define lock_num_exmode(_l)		(0ULL)
# define lock_num_prmode_failed(_l)	(0)
# define lock_num_exmode_failed(_l)	(0)
# define lock_total_prmode(_l)		(0ULL)
# define lock_total_exmode(_l)		(0ULL)
# define lock_max_prmode(_l)		(0)
# define lock_max_exmode(_l)		(0)
# define lock_refresh(_l)		(0)
#endif
	/* The following seq_print was added in version 2 of this output */
	FUNC11(m, "%llu\t"
		   "%llu\t"
		   "%u\t"
		   "%u\t"
		   "%llu\t"
		   "%llu\t"
		   "%u\t"
		   "%u\t"
		   "%u\t",
		   lock_num_prmode(lockres),
		   lock_num_exmode(lockres),
		   lock_num_prmode_failed(lockres),
		   lock_num_exmode_failed(lockres),
		   lock_total_prmode(lockres),
		   lock_total_exmode(lockres),
		   lock_max_prmode(lockres),
		   lock_max_exmode(lockres),
		   lock_refresh(lockres));

	/* End the line */
	FUNC11(m, "\n");
	return 0;
}