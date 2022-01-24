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
typedef  size_t uint32_t ;
struct dlm_ls {TYPE_1__* ls_dirtbl; } ;
struct dlm_direntry {int master_nodeid; int /*<<< orphan*/  list; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 size_t FUNC0 (struct dlm_ls*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_direntry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct dlm_ls*,char*,int,...) ; 
 struct dlm_direntry* FUNC4 (struct dlm_ls*,char*,int,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct dlm_ls *ls, int nodeid, char *name, int namelen)
{
	struct dlm_direntry *de;
	uint32_t bucket;

	bucket = FUNC0(ls, name, namelen);

	FUNC5(&ls->ls_dirtbl[bucket].lock);

	de = FUNC4(ls, name, namelen, bucket);

	if (!de) {
		FUNC3(ls, "remove fr %u none", nodeid);
		goto out;
	}

	if (de->master_nodeid != nodeid) {
		FUNC3(ls, "remove fr %u ID %u", nodeid, de->master_nodeid);
		goto out;
	}

	FUNC2(&de->list);
	FUNC1(de);
 out:
	FUNC6(&ls->ls_dirtbl[bucket].lock);
}