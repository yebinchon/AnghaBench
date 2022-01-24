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
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct afs_vlocation {TYPE_1__ vldb; int /*<<< orphan*/  lock; int /*<<< orphan*/  waitq; int /*<<< orphan*/  update; int /*<<< orphan*/  grave; int /*<<< orphan*/  link; int /*<<< orphan*/  usage; int /*<<< orphan*/  state; struct afs_cell* cell; } ;
struct afs_cell {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFS_VL_NEW ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct afs_vlocation*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct afs_vlocation* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct afs_vlocation *FUNC7(struct afs_cell *cell,
						 const char *name,
						 size_t namesz)
{
	struct afs_vlocation *vl;

	vl = FUNC4(sizeof(struct afs_vlocation), GFP_KERNEL);
	if (vl) {
		vl->cell = cell;
		vl->state = AFS_VL_NEW;
		FUNC2(&vl->usage, 1);
		FUNC0(&vl->link);
		FUNC0(&vl->grave);
		FUNC0(&vl->update);
		FUNC3(&vl->waitq);
		FUNC6(&vl->lock);
		FUNC5(vl->vldb.name, name, namesz);
	}

	FUNC1(" = %p", vl);
	return vl;
}