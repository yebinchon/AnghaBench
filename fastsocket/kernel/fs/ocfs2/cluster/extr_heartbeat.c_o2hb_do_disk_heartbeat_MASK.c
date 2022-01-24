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
struct o2hb_region {int /*<<< orphan*/  hr_steady_iterations; int /*<<< orphan*/  hr_dev_name; int /*<<< orphan*/ * hr_slots; int /*<<< orphan*/  hr_generation; } ;
struct o2hb_bio_wait_ctxt {int wc_error; } ;
typedef  int /*<<< orphan*/  configured_nodes ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  ML_NOTICE ; 
 int O2NM_MAX_NODES ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (unsigned long*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct o2hb_region*) ; 
 int /*<<< orphan*/  FUNC7 (struct o2hb_region*) ; 
 int FUNC8 (struct o2hb_region*,int /*<<< orphan*/ *) ; 
 int FUNC9 (unsigned long*,int) ; 
 int FUNC10 (struct o2hb_region*,struct o2hb_bio_wait_ctxt*) ; 
 int /*<<< orphan*/  FUNC11 (struct o2hb_region*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct o2hb_region*,int) ; 
 int /*<<< orphan*/  o2hb_steady_queue ; 
 int /*<<< orphan*/  FUNC13 (struct o2hb_region*,struct o2hb_bio_wait_ctxt*) ; 
 int FUNC14 (unsigned long*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct o2hb_region *reg)
{
	int i, ret, highest_node, change = 0;
	unsigned long configured_nodes[FUNC0(O2NM_MAX_NODES)];
	struct o2hb_bio_wait_ctxt write_wc;

	ret = FUNC14(configured_nodes,
				       sizeof(configured_nodes));
	if (ret) {
		FUNC5(ret);
		return ret;
	}

	highest_node = FUNC9(configured_nodes, O2NM_MAX_NODES);
	if (highest_node >= O2NM_MAX_NODES) {
		FUNC4(ML_NOTICE, "ocfs2_heartbeat: no configured nodes found!\n");
		return -EINVAL;
	}

	/* No sense in reading the slots of nodes that don't exist
	 * yet. Of course, if the node definitions have holes in them
	 * then we're reading an empty slot anyway... Consider this
	 * best-effort. */
	ret = FUNC12(reg, highest_node + 1);
	if (ret < 0) {
		FUNC5(ret);
		return ret;
	}

	/* With an up to date view of the slots, we can check that no
	 * other node has been improperly configured to heartbeat in
	 * our slot. */
	if (!FUNC7(reg))
		FUNC4(ML_ERROR, "Device \"%s\": another node is heartbeating "
		     "in our slot!\n", reg->hr_dev_name);

	/* fill in the proper info for our next heartbeat */
	FUNC11(reg, reg->hr_generation);

	/* And fire off the write. Note that we don't wait on this I/O
	 * until later. */
	ret = FUNC10(reg, &write_wc);
	if (ret < 0) {
		FUNC5(ret);
		return ret;
	}

	i = -1;
	while((i = FUNC3(configured_nodes, O2NM_MAX_NODES, i + 1)) < O2NM_MAX_NODES) {

		change |= FUNC8(reg, &reg->hr_slots[i]);
	}

	/*
	 * We have to be sure we've advertised ourselves on disk
	 * before we can go to steady state.  This ensures that
	 * people we find in our steady state have seen us.
	 */
	FUNC13(reg, &write_wc);
	if (write_wc.wc_error) {
		/* Do not re-arm the write timeout on I/O error - we
		 * can't be sure that the new block ever made it to
		 * disk */
		FUNC4(ML_ERROR, "Write error %d on device \"%s\"\n",
		     write_wc.wc_error, reg->hr_dev_name);
		return write_wc.wc_error;
	}

	FUNC6(reg);

	/* let the person who launched us know when things are steady */
	if (!change && (FUNC2(&reg->hr_steady_iterations) != 0)) {
		if (FUNC1(&reg->hr_steady_iterations))
			FUNC15(&o2hb_steady_queue);
	}

	return 0;
}