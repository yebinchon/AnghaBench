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
struct TYPE_2__ {scalar_t__ ippathid; int /*<<< orphan*/  ipflags1; int /*<<< orphan*/  ipmsglim; int /*<<< orphan*/  ipuser; int /*<<< orphan*/  iptarget; int /*<<< orphan*/  ipvmid; } ;
union iucv_param {TYPE_1__ ctrl; } ;
typedef  int /*<<< orphan*/  u8 ;
struct iucv_path {size_t pathid; int /*<<< orphan*/  list; void* private; struct iucv_handler* handler; int /*<<< orphan*/  flags; int /*<<< orphan*/  msglim; } ;
struct iucv_handler {int /*<<< orphan*/  paths; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int EIO ; 
 int /*<<< orphan*/  IUCV_CONNECT ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iucv_buffer_cpumask ; 
 int FUNC3 (int /*<<< orphan*/ ,union iucv_param*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  iucv_error_pathid ; 
 scalar_t__ iucv_max_pathid ; 
 union iucv_param** iucv_param ; 
 struct iucv_path** iucv_path_table ; 
 int /*<<< orphan*/  FUNC5 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iucv_table_lock ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (union iucv_param*,int /*<<< orphan*/ ,int) ; 
 size_t FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

int FUNC12(struct iucv_path *path, struct iucv_handler *handler,
		      u8 userid[8], u8 system[8], u8 userdata[16],
		      void *private)
{
	union iucv_param *parm;
	int rc;

	FUNC10(&iucv_table_lock);
	FUNC4();
	if (FUNC2(iucv_buffer_cpumask)) {
		rc = -EIO;
		goto out;
	}
	parm = iucv_param[FUNC9()];
	FUNC8(parm, 0, sizeof(union iucv_param));
	parm->ctrl.ipmsglim = path->msglim;
	parm->ctrl.ipflags1 = path->flags;
	if (userid) {
		FUNC7(parm->ctrl.ipvmid, userid, sizeof(parm->ctrl.ipvmid));
		FUNC0(parm->ctrl.ipvmid, sizeof(parm->ctrl.ipvmid));
		FUNC1(parm->ctrl.ipvmid, sizeof(parm->ctrl.ipvmid));
	}
	if (system) {
		FUNC7(parm->ctrl.iptarget, system,
		       sizeof(parm->ctrl.iptarget));
		FUNC0(parm->ctrl.iptarget, sizeof(parm->ctrl.iptarget));
		FUNC1(parm->ctrl.iptarget, sizeof(parm->ctrl.iptarget));
	}
	if (userdata)
		FUNC7(parm->ctrl.ipuser, userdata, sizeof(parm->ctrl.ipuser));

	rc = FUNC3(IUCV_CONNECT, parm);
	if (!rc) {
		if (parm->ctrl.ippathid < iucv_max_pathid) {
			path->pathid = parm->ctrl.ippathid;
			path->msglim = parm->ctrl.ipmsglim;
			path->flags = parm->ctrl.ipflags1;
			path->handler = handler;
			path->private = private;
			FUNC6(&path->list, &handler->paths);
			iucv_path_table[path->pathid] = path;
		} else {
			FUNC5(parm->ctrl.ippathid,
					  iucv_error_pathid);
			rc = -EIO;
		}
	}
out:
	FUNC11(&iucv_table_lock);
	return rc;
}