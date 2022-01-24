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
typedef  int /*<<< orphan*/  used ;
typedef  int /*<<< orphan*/  unique ;
typedef  int /*<<< orphan*/  uncompressed ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  char* u_longlong_t ;
typedef  int /*<<< orphan*/  time_t ;
typedef  int /*<<< orphan*/  objset_t ;
struct TYPE_2__ {scalar_t__ ds_props_obj; scalar_t__ ds_next_clones_obj; scalar_t__ ds_flags; scalar_t__ ds_guid; scalar_t__ ds_fsid_guid; scalar_t__ ds_deadlist_obj; scalar_t__ ds_creation_txg; scalar_t__ ds_userrefs_obj; scalar_t__ ds_num_children; scalar_t__ ds_snapnames_zapobj; scalar_t__ ds_next_snap_obj; scalar_t__ ds_prev_snap_txg; scalar_t__ ds_prev_snap_obj; scalar_t__ ds_dir_obj; int /*<<< orphan*/  ds_bp; int /*<<< orphan*/  ds_unique_bytes; int /*<<< orphan*/  ds_uncompressed_bytes; int /*<<< orphan*/  ds_compressed_bytes; int /*<<< orphan*/  ds_referenced_bytes; int /*<<< orphan*/  ds_creation_time; } ;
typedef  TYPE_1__ dsl_dataset_phys_t ;
typedef  int /*<<< orphan*/  compressed ;
typedef  int /*<<< orphan*/  blkbuf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int BP_SPRINTF_LEN ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int NN_NUMBUF_SZ ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC6(objset_t *os, uint64_t object, void *data, size_t size)
{
	dsl_dataset_phys_t *ds = data;
	time_t crtime;
	char used[32], compressed[32], uncompressed[32], unique[32];
	char blkbuf[BP_SPRINTF_LEN];

	/* make sure nicenum has enough space */
	FUNC1(sizeof (used) >= NN_NUMBUF_SZ);
	FUNC1(sizeof (compressed) >= NN_NUMBUF_SZ);
	FUNC1(sizeof (uncompressed) >= NN_NUMBUF_SZ);
	FUNC1(sizeof (unique) >= NN_NUMBUF_SZ);

	if (ds == NULL)
		return;

	FUNC0(size == sizeof (*ds));
	crtime = ds->ds_creation_time;
	FUNC5(ds->ds_referenced_bytes, used, sizeof (used));
	FUNC5(ds->ds_compressed_bytes, compressed, sizeof (compressed));
	FUNC5(ds->ds_uncompressed_bytes, uncompressed,
	    sizeof (uncompressed));
	FUNC5(ds->ds_unique_bytes, unique, sizeof (unique));
	FUNC4(blkbuf, sizeof (blkbuf), &ds->ds_bp);

	(void) FUNC3("\t\tdir_obj = %llu\n",
	    (u_longlong_t)ds->ds_dir_obj);
	(void) FUNC3("\t\tprev_snap_obj = %llu\n",
	    (u_longlong_t)ds->ds_prev_snap_obj);
	(void) FUNC3("\t\tprev_snap_txg = %llu\n",
	    (u_longlong_t)ds->ds_prev_snap_txg);
	(void) FUNC3("\t\tnext_snap_obj = %llu\n",
	    (u_longlong_t)ds->ds_next_snap_obj);
	(void) FUNC3("\t\tsnapnames_zapobj = %llu\n",
	    (u_longlong_t)ds->ds_snapnames_zapobj);
	(void) FUNC3("\t\tnum_children = %llu\n",
	    (u_longlong_t)ds->ds_num_children);
	(void) FUNC3("\t\tuserrefs_obj = %llu\n",
	    (u_longlong_t)ds->ds_userrefs_obj);
	(void) FUNC3("\t\tcreation_time = %s", FUNC2(&crtime));
	(void) FUNC3("\t\tcreation_txg = %llu\n",
	    (u_longlong_t)ds->ds_creation_txg);
	(void) FUNC3("\t\tdeadlist_obj = %llu\n",
	    (u_longlong_t)ds->ds_deadlist_obj);
	(void) FUNC3("\t\tused_bytes = %s\n", used);
	(void) FUNC3("\t\tcompressed_bytes = %s\n", compressed);
	(void) FUNC3("\t\tuncompressed_bytes = %s\n", uncompressed);
	(void) FUNC3("\t\tunique = %s\n", unique);
	(void) FUNC3("\t\tfsid_guid = %llu\n",
	    (u_longlong_t)ds->ds_fsid_guid);
	(void) FUNC3("\t\tguid = %llu\n",
	    (u_longlong_t)ds->ds_guid);
	(void) FUNC3("\t\tflags = %llx\n",
	    (u_longlong_t)ds->ds_flags);
	(void) FUNC3("\t\tnext_clones_obj = %llu\n",
	    (u_longlong_t)ds->ds_next_clones_obj);
	(void) FUNC3("\t\tprops_obj = %llu\n",
	    (u_longlong_t)ds->ds_props_obj);
	(void) FUNC3("\t\tbp = %s\n", blkbuf);
}