#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u16 ;
typedef  int s8 ;
typedef  int s64 ;
struct TYPE_22__ {int vcn; int lcn; int length; } ;
typedef  TYPE_3__ runlist_element ;
struct TYPE_23__ {int major_ver; int cluster_size; int cluster_size_bits; int /*<<< orphan*/  sb; } ;
typedef  TYPE_4__ ntfs_volume ;
typedef  int VCN ;
struct TYPE_21__ {int /*<<< orphan*/  allocated_size; int /*<<< orphan*/  lowest_vcn; int /*<<< orphan*/  highest_vcn; int /*<<< orphan*/  mapping_pairs_offset; } ;
struct TYPE_20__ {TYPE_2__ non_resident; } ;
struct TYPE_24__ {TYPE_1__ data; int /*<<< orphan*/  length; int /*<<< orphan*/  non_resident; } ;
typedef  int LCN ;
typedef  TYPE_5__ ATTR_RECORD ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOMEM ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int LCN_ENOENT ; 
 int LCN_HOLE ; 
 void* LCN_RL_NOT_MAPPED ; 
 int PAGE_SIZE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 TYPE_3__* FUNC10 (int) ; 
 TYPE_3__* FUNC11 (TYPE_3__*,TYPE_3__*) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int) ; 

runlist_element *FUNC14(const ntfs_volume *vol,
		const ATTR_RECORD *attr, runlist_element *old_rl)
{
	VCN vcn;		/* Current vcn. */
	LCN lcn;		/* Current lcn. */
	s64 deltaxcn;		/* Change in [vl]cn. */
	runlist_element *rl;	/* The output runlist. */
	u8 *buf;		/* Current position in mapping pairs array. */
	u8 *attr_end;		/* End of attribute. */
	int rlsize;		/* Size of runlist buffer. */
	u16 rlpos;		/* Current runlist position in units of
				   runlist_elements. */
	u8 b;			/* Current byte offset in buf. */

#ifdef DEBUG
	/* Make sure attr exists and is non-resident. */
	if (!attr || !attr->non_resident || sle64_to_cpu(
			attr->data.non_resident.lowest_vcn) < (VCN)0) {
		ntfs_error(vol->sb, "Invalid arguments.");
		return ERR_PTR(-EINVAL);
	}
#endif
	/* Start at vcn = lowest_vcn and lcn 0. */
	vcn = FUNC12(attr->data.non_resident.lowest_vcn);
	lcn = 0;
	/* Get start of the mapping pairs array. */
	buf = (u8*)attr + FUNC2(
			attr->data.non_resident.mapping_pairs_offset);
	attr_end = (u8*)attr + FUNC3(attr->length);
	if (FUNC13(buf < (u8*)attr || buf > attr_end)) {
		FUNC8(vol->sb, "Corrupt attribute.");
		return FUNC0(-EIO);
	}
	/* If the mapping pairs array is valid but empty, nothing to do. */
	if (!vcn && !*buf)
		return old_rl;
	/* Current position in runlist array. */
	rlpos = 0;
	/* Allocate first page and set current runlist size to one page. */
	rl = FUNC10(rlsize = PAGE_SIZE);
	if (FUNC13(!rl))
		return FUNC0(-ENOMEM);
	/* Insert unmapped starting element if necessary. */
	if (vcn) {
		rl->vcn = 0;
		rl->lcn = LCN_RL_NOT_MAPPED;
		rl->length = vcn;
		rlpos++;
	}
	while (buf < attr_end && *buf) {
		/*
		 * Allocate more memory if needed, including space for the
		 * not-mapped and terminator elements. ntfs_malloc_nofs()
		 * operates on whole pages only.
		 */
		if (((rlpos + 3) * sizeof(*old_rl)) > rlsize) {
			runlist_element *rl2;

			rl2 = FUNC10(rlsize + (int)PAGE_SIZE);
			if (FUNC13(!rl2)) {
				FUNC9(rl);
				return FUNC0(-ENOMEM);
			}
			FUNC5(rl2, rl, rlsize);
			FUNC9(rl);
			rl = rl2;
			rlsize += PAGE_SIZE;
		}
		/* Enter the current vcn into the current runlist element. */
		rl[rlpos].vcn = vcn;
		/*
		 * Get the change in vcn, i.e. the run length in clusters.
		 * Doing it this way ensures that we signextend negative values.
		 * A negative run length doesn't make any sense, but hey, I
		 * didn't make up the NTFS specs and Windows NT4 treats the run
		 * length as a signed value so that's how it is...
		 */
		b = *buf & 0xf;
		if (b) {
			if (FUNC13(buf + b > attr_end))
				goto io_error;
			for (deltaxcn = (s8)buf[b--]; b; b--)
				deltaxcn = (deltaxcn << 8) + buf[b];
		} else { /* The length entry is compulsory. */
			FUNC8(vol->sb, "Missing length entry in mapping "
					"pairs array.");
			deltaxcn = (s64)-1;
		}
		/*
		 * Assume a negative length to indicate data corruption and
		 * hence clean-up and return NULL.
		 */
		if (FUNC13(deltaxcn < 0)) {
			FUNC8(vol->sb, "Invalid length in mapping pairs "
					"array.");
			goto err_out;
		}
		/*
		 * Enter the current run length into the current runlist
		 * element.
		 */
		rl[rlpos].length = deltaxcn;
		/* Increment the current vcn by the current run length. */
		vcn += deltaxcn;
		/*
		 * There might be no lcn change at all, as is the case for
		 * sparse clusters on NTFS 3.0+, in which case we set the lcn
		 * to LCN_HOLE.
		 */
		if (!(*buf & 0xf0))
			rl[rlpos].lcn = LCN_HOLE;
		else {
			/* Get the lcn change which really can be negative. */
			u8 b2 = *buf & 0xf;
			b = b2 + ((*buf >> 4) & 0xf);
			if (buf + b > attr_end)
				goto io_error;
			for (deltaxcn = (s8)buf[b--]; b > b2; b--)
				deltaxcn = (deltaxcn << 8) + buf[b];
			/* Change the current lcn to its new value. */
			lcn += deltaxcn;
#ifdef DEBUG
			/*
			 * On NTFS 1.2-, apparently can have lcn == -1 to
			 * indicate a hole. But we haven't verified ourselves
			 * whether it is really the lcn or the deltaxcn that is
			 * -1. So if either is found give us a message so we
			 * can investigate it further!
			 */
			if (vol->major_ver < 3) {
				if (unlikely(deltaxcn == (LCN)-1))
					ntfs_error(vol->sb, "lcn delta == -1");
				if (unlikely(lcn == (LCN)-1))
					ntfs_error(vol->sb, "lcn == -1");
			}
#endif
			/* Check lcn is not below -1. */
			if (FUNC13(lcn < (LCN)-1)) {
				FUNC8(vol->sb, "Invalid LCN < -1 in "
						"mapping pairs array.");
				goto err_out;
			}
			/* Enter the current lcn into the runlist element. */
			rl[rlpos].lcn = lcn;
		}
		/* Get to the next runlist element. */
		rlpos++;
		/* Increment the buffer position to the next mapping pair. */
		buf += (*buf & 0xf) + ((*buf >> 4) & 0xf) + 1;
	}
	if (FUNC13(buf >= attr_end))
		goto io_error;
	/*
	 * If there is a highest_vcn specified, it must be equal to the final
	 * vcn in the runlist - 1, or something has gone badly wrong.
	 */
	deltaxcn = FUNC12(attr->data.non_resident.highest_vcn);
	if (FUNC13(deltaxcn && vcn - 1 != deltaxcn)) {
mpa_err:
		FUNC8(vol->sb, "Corrupt mapping pairs array in "
				"non-resident attribute.");
		goto err_out;
	}
	/* Setup not mapped runlist element if this is the base extent. */
	if (!attr->data.non_resident.lowest_vcn) {
		VCN max_cluster;

		max_cluster = ((FUNC12(
				attr->data.non_resident.allocated_size) +
				vol->cluster_size - 1) >>
				vol->cluster_size_bits) - 1;
		/*
		 * A highest_vcn of zero means this is a single extent
		 * attribute so simply terminate the runlist with LCN_ENOENT).
		 */
		if (deltaxcn) {
			/*
			 * If there is a difference between the highest_vcn and
			 * the highest cluster, the runlist is either corrupt
			 * or, more likely, there are more extents following
			 * this one.
			 */
			if (deltaxcn < max_cluster) {
				FUNC6("More extents to follow; deltaxcn "
						"= 0x%llx, max_cluster = "
						"0x%llx",
						(unsigned long long)deltaxcn,
						(unsigned long long)
						max_cluster);
				rl[rlpos].vcn = vcn;
				vcn += rl[rlpos].length = max_cluster -
						deltaxcn;
				rl[rlpos].lcn = LCN_RL_NOT_MAPPED;
				rlpos++;
			} else if (FUNC13(deltaxcn > max_cluster)) {
				FUNC8(vol->sb, "Corrupt attribute.  "
						"deltaxcn = 0x%llx, "
						"max_cluster = 0x%llx",
						(unsigned long long)deltaxcn,
						(unsigned long long)
						max_cluster);
				goto mpa_err;
			}
		}
		rl[rlpos].lcn = LCN_ENOENT;
	} else /* Not the base extent. There may be more extents to follow. */
		rl[rlpos].lcn = LCN_RL_NOT_MAPPED;

	/* Setup terminating runlist element. */
	rl[rlpos].vcn = vcn;
	rl[rlpos].length = (s64)0;
	/* If no existing runlist was specified, we are done. */
	if (!old_rl) {
		FUNC6("Mapping pairs array successfully decompressed:");
		FUNC7(rl);
		return rl;
	}
	/* Now combine the new and old runlists checking for overlaps. */
	old_rl = FUNC11(old_rl, rl);
	if (FUNC4(!FUNC1(old_rl)))
		return old_rl;
	FUNC9(rl);
	FUNC8(vol->sb, "Failed to merge runlists.");
	return old_rl;
io_error:
	FUNC8(vol->sb, "Corrupt attribute.");
err_out:
	FUNC9(rl);
	return FUNC0(-EIO);
}