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
struct css_id {int id; int depth; } ;
struct cgroup_subsys {int /*<<< orphan*/  id_lock; int /*<<< orphan*/  idr; int /*<<< orphan*/  use_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CSS_ID_MAX ; 
 int ENOMEM ; 
 int ENOSPC ; 
 struct css_id* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC2 (int /*<<< orphan*/ *,struct css_id*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct css_id*) ; 
 struct css_id* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static struct css_id *FUNC10(struct cgroup_subsys *ss, int depth)
{
	struct css_id *newid;
	int myid, error, size;

	FUNC0(!ss->use_id);

	size = sizeof(*newid) + sizeof(unsigned short) * (depth + 1);
	newid = FUNC6(size, GFP_KERNEL);
	if (!newid)
		return FUNC1(-ENOMEM);
	/* get id */
	if (FUNC9(!FUNC3(&ss->idr, GFP_KERNEL))) {
		error = -ENOMEM;
		goto err_out;
	}
	FUNC7(&ss->id_lock);
	/* Don't use 0. allocates an ID of 1-65535 */
	error = FUNC2(&ss->idr, newid, 1, &myid);
	FUNC8(&ss->id_lock);

	/* Returns error when there are no free spaces for new ID.*/
	if (error) {
		error = -ENOSPC;
		goto err_out;
	}
	if (myid > CSS_ID_MAX)
		goto remove_idr;

	newid->id = myid;
	newid->depth = depth;
	return newid;
remove_idr:
	error = -ENOSPC;
	FUNC7(&ss->id_lock);
	FUNC4(&ss->idr, myid);
	FUNC8(&ss->id_lock);
err_out:
	FUNC5(newid);
	return FUNC1(error);

}