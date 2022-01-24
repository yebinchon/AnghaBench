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
struct dlm_direntry {int master_nodeid; int length; int /*<<< orphan*/  list; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int DLM_RESNAME_MAXLEN ; 
 int EEXIST ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 size_t FUNC0 (struct dlm_ls*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_direntry*) ; 
 struct dlm_direntry* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 struct dlm_direntry* FUNC5 (struct dlm_ls*,char*,int,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct dlm_ls *ls, int nodeid, char *name,
		     int namelen, int *r_nodeid)
{
	struct dlm_direntry *de, *tmp;
	uint32_t bucket;

	bucket = FUNC0(ls, name, namelen);

	FUNC6(&ls->ls_dirtbl[bucket].lock);
	de = FUNC5(ls, name, namelen, bucket);
	if (de) {
		*r_nodeid = de->master_nodeid;
		FUNC7(&ls->ls_dirtbl[bucket].lock);
		if (*r_nodeid == nodeid)
			return -EEXIST;
		return 0;
	}

	FUNC7(&ls->ls_dirtbl[bucket].lock);

	if (namelen > DLM_RESNAME_MAXLEN)
		return -EINVAL;

	de = FUNC2(sizeof(struct dlm_direntry) + namelen, GFP_NOFS);
	if (!de)
		return -ENOMEM;

	de->master_nodeid = nodeid;
	de->length = namelen;
	FUNC4(de->name, name, namelen);

	FUNC6(&ls->ls_dirtbl[bucket].lock);
	tmp = FUNC5(ls, name, namelen, bucket);
	if (tmp) {
		FUNC1(de);
		de = tmp;
	} else {
		FUNC3(&de->list, &ls->ls_dirtbl[bucket].list);
	}
	*r_nodeid = de->master_nodeid;
	FUNC7(&ls->ls_dirtbl[bucket].lock);
	return 0;
}