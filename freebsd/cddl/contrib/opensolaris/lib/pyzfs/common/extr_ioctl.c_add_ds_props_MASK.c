#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  dds_inconsistent; int /*<<< orphan*/  dds_is_snapshot; int /*<<< orphan*/  dds_num_clones; } ;
struct TYPE_4__ {TYPE_2__ zc_objset_stats; } ;
typedef  TYPE_1__ zfs_cmd_t ;
typedef  TYPE_2__ dmu_objset_stats_t ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(zfs_cmd_t *zc, PyObject *nvl)
{
	dmu_objset_stats_t *s = &zc->zc_objset_stats;
	FUNC0(nvl, "numclones",
	    FUNC1(s->dds_num_clones));
	FUNC0(nvl, "issnap",
	    FUNC1(s->dds_is_snapshot));
	FUNC0(nvl, "inconsistent",
	    FUNC1(s->dds_inconsistent));
}