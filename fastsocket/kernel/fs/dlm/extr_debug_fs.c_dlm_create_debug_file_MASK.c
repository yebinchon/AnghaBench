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
struct dlm_ls {char* ls_name; void* ls_debug_waiters_dentry; void* ls_debug_all_dentry; void* ls_debug_locks_dentry; void* ls_debug_rsb_dentry; } ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int DLM_LOCKSPACE_LEN ; 
 int ENOMEM ; 
 int S_IFREG ; 
 int S_IRUGO ; 
 void* FUNC0 (char*,int,int /*<<< orphan*/ ,struct dlm_ls*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_ls*) ; 
 int /*<<< orphan*/  dlm_root ; 
 int /*<<< orphan*/  format1_fops ; 
 int /*<<< orphan*/  format2_fops ; 
 int /*<<< orphan*/  format3_fops ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  waiters_fops ; 

int FUNC4(struct dlm_ls *ls)
{
	char name[DLM_LOCKSPACE_LEN+8];

	/* format 1 */

	ls->ls_debug_rsb_dentry = FUNC0(ls->ls_name,
						      S_IFREG | S_IRUGO,
						      dlm_root,
						      ls,
						      &format1_fops);
	if (!ls->ls_debug_rsb_dentry)
		goto fail;

	/* format 2 */

	FUNC2(name, 0, sizeof(name));
	FUNC3(name, DLM_LOCKSPACE_LEN+8, "%s_locks", ls->ls_name);

	ls->ls_debug_locks_dentry = FUNC0(name,
							S_IFREG | S_IRUGO,
							dlm_root,
							ls,
							&format2_fops);
	if (!ls->ls_debug_locks_dentry)
		goto fail;

	/* format 3 */

	FUNC2(name, 0, sizeof(name));
	FUNC3(name, DLM_LOCKSPACE_LEN+8, "%s_all", ls->ls_name);

	ls->ls_debug_all_dentry = FUNC0(name,
						      S_IFREG | S_IRUGO,
						      dlm_root,
						      ls,
						      &format3_fops);
	if (!ls->ls_debug_all_dentry)
		goto fail;

	FUNC2(name, 0, sizeof(name));
	FUNC3(name, DLM_LOCKSPACE_LEN+8, "%s_waiters", ls->ls_name);

	ls->ls_debug_waiters_dentry = FUNC0(name,
							  S_IFREG | S_IRUGO,
							  dlm_root,
							  ls,
							  &waiters_fops);
	if (!ls->ls_debug_waiters_dentry)
		goto fail;

	return 0;

 fail:
	FUNC1(ls);
	return -ENOMEM;
}