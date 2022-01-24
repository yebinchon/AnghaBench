#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ if_data; } ;
struct TYPE_15__ {int if_flags; TYPE_2__ if_u1; } ;
typedef  TYPE_4__ xfs_ifork_t ;
struct TYPE_16__ {scalar_t__ namelen; int /*<<< orphan*/  flags; int /*<<< orphan*/  name; TYPE_1__* dp; } ;
typedef  TYPE_5__ xfs_da_args_t ;
struct TYPE_14__ {int count; } ;
struct TYPE_17__ {TYPE_3__ hdr; TYPE_7__* list; } ;
typedef  TYPE_6__ xfs_attr_shortform_t ;
struct TYPE_18__ {scalar_t__ namelen; int /*<<< orphan*/  flags; int /*<<< orphan*/  nameval; } ;
typedef  TYPE_7__ xfs_attr_sf_entry_t ;
struct TYPE_12__ {TYPE_4__* i_afp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EEXIST ; 
 int /*<<< orphan*/  ENOATTR ; 
 TYPE_7__* FUNC1 (TYPE_7__*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int XFS_IFINLINE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC6(xfs_da_args_t *args)
{
	xfs_attr_shortform_t *sf;
	xfs_attr_sf_entry_t *sfe;
	int i;
	xfs_ifork_t *ifp;

	FUNC4(args);

	ifp = args->dp->i_afp;
	FUNC0(ifp->if_flags & XFS_IFINLINE);
	sf = (xfs_attr_shortform_t *)ifp->if_u1.if_data;
	sfe = &sf->list[0];
	for (i = 0; i < sf->hdr.count;
				sfe = FUNC1(sfe), i++) {
		if (sfe->namelen != args->namelen)
			continue;
		if (FUNC3(args->name, sfe->nameval, args->namelen) != 0)
			continue;
		if (!FUNC5(args->flags, sfe->flags))
			continue;
		return(FUNC2(EEXIST));
	}
	return(FUNC2(ENOATTR));
}