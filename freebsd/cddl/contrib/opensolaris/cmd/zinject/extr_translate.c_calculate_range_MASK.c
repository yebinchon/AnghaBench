#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int zi_start; unsigned long long zi_end; int zi_object; int zi_level; } ;
typedef  TYPE_1__ zinject_record_t ;
typedef  int /*<<< orphan*/  u_longlong_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int err_type_t ;
struct TYPE_8__ {int dn_datablkshift; int dn_indblkshift; int dn_nlevels; } ;
typedef  TYPE_2__ dnode_t ;
typedef  int /*<<< orphan*/  dnode_phys_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DMU_OST_ANY ; 
 int /*<<< orphan*/  FTAG ; 
 int SPA_BLKPTRSHIFT ; 
#define  TYPE_DATA 129 
#define  TYPE_DNODE 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC6 (int) ; 
 void* FUNC7 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,...) ; 

__attribute__((used)) static int
FUNC9(const char *dataset, err_type_t type, int level, char *range,
    zinject_record_t *record)
{
	objset_t *os = NULL;
	dnode_t *dn = NULL;
	int err;
	int ret = -1;

	/*
	 * Determine the numeric range from the string.
	 */
	if (range == NULL) {
		/*
		 * If range is unspecified, set the range to [0,-1], which
		 * indicates that the whole object should be treated as an
		 * error.
		 */
		record->zi_start = 0;
		record->zi_end = -1ULL;
	} else {
		char *end;

		/* XXX add support for suffixes */
		record->zi_start = FUNC7(range, &end, 10);


		if (*end == '\0')
			record->zi_end = record->zi_start + 1;
		else if (*end == ',')
			record->zi_end = FUNC7(end + 1, &end, 10);

		if (*end != '\0') {
			(void) FUNC5(stderr, "invalid range '%s': must be "
			    "a numeric range of the form 'start[,end]'\n",
			    range);
			goto out;
		}
	}

	switch (type) {
	case TYPE_DATA:
		break;

	case TYPE_DNODE:
		/*
		 * If this is a request to inject faults into the dnode, then we
		 * must translate the current (objset,object) pair into an
		 * offset within the metadnode for the objset.  Specifying any
		 * kind of range with type 'dnode' is illegal.
		 */
		if (range != NULL) {
			(void) FUNC5(stderr, "range cannot be specified when "
			    "type is 'dnode'\n");
			goto out;
		}

		record->zi_start = record->zi_object * sizeof (dnode_phys_t);
		record->zi_end = record->zi_start + sizeof (dnode_phys_t);
		record->zi_object = 0;
		break;
	}

	/*
	 * Get the dnode associated with object, so we can calculate the block
	 * size.
	 */
	if ((err = FUNC2(dataset, DMU_OST_ANY,
	    B_TRUE, FTAG, &os)) != 0) {
		(void) FUNC5(stderr, "cannot open dataset '%s': %s\n",
		    dataset, FUNC6(err));
		goto out;
	}

	if (record->zi_object == 0) {
		dn = FUNC0(os);
	} else {
		err = FUNC3(os, record->zi_object, FTAG, &dn);
		if (err != 0) {
			(void) FUNC5(stderr, "failed to hold dnode "
			    "for object %d\n",
			    (u_longlong_t)record->zi_object);
			goto out;
		}
	}


	FUNC8("data shift: %d\n", (int)dn->dn_datablkshift);
	FUNC8(" ind shift: %d\n", (int)dn->dn_indblkshift);

	/*
	 * Translate range into block IDs.
	 */
	if (record->zi_start != 0 || record->zi_end != -1ULL) {
		record->zi_start >>= dn->dn_datablkshift;
		record->zi_end >>= dn->dn_datablkshift;
	}

	/*
	 * Check level, and then translate level 0 blkids into ranges
	 * appropriate for level of indirection.
	 */
	record->zi_level = level;
	if (level > 0) {
		FUNC8("level 0 blkid range: [%llu, %llu]\n",
		    record->zi_start, record->zi_end);

		if (level >= dn->dn_nlevels) {
			(void) FUNC5(stderr, "level %d exceeds max level "
			    "of object (%d)\n", level, dn->dn_nlevels - 1);
			goto out;
		}

		if (record->zi_start != 0 || record->zi_end != 0) {
			int shift = dn->dn_indblkshift - SPA_BLKPTRSHIFT;

			for (; level > 0; level--) {
				record->zi_start >>= shift;
				record->zi_end >>= shift;
			}
		}
	}

	ret = 0;
out:
	if (dn) {
		if (dn != FUNC0(os))
			FUNC4(dn, FTAG);
	}
	if (os)
		FUNC1(os, FTAG);

	return (ret);
}