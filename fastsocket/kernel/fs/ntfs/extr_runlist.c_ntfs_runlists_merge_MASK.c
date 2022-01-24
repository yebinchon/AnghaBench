#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_1__ ;

/* Type definitions */
typedef  int s64 ;
struct TYPE_26__ {int vcn; int length; scalar_t__ lcn; } ;
typedef  TYPE_1__ runlist_element ;
typedef  void* VCN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ERANGE ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ LCN_ENOENT ; 
 scalar_t__ LCN_HOLE ; 
 scalar_t__ LCN_RL_NOT_MAPPED ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 TYPE_1__* FUNC8 (TYPE_1__*,int,TYPE_1__*,int,int) ; 
 TYPE_1__* FUNC9 (TYPE_1__*,int,TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC11 (TYPE_1__*,int,int) ; 
 TYPE_1__* FUNC12 (TYPE_1__*,int,int) ; 
 TYPE_1__* FUNC13 (TYPE_1__*,int,TYPE_1__*,int,int) ; 
 TYPE_1__* FUNC14 (TYPE_1__*,int,TYPE_1__*,int,int) ; 
 scalar_t__ FUNC15 (int) ; 

runlist_element *FUNC16(runlist_element *drl,
		runlist_element *srl)
{
	int di, si;		/* Current index into @[ds]rl. */
	int sstart;		/* First index with lcn > LCN_RL_NOT_MAPPED. */
	int dins;		/* Index into @drl at which to insert @srl. */
	int dend, send;		/* Last index into @[ds]rl. */
	int dfinal, sfinal;	/* The last index into @[ds]rl with
				   lcn >= LCN_HOLE. */
	int marker = 0;
	VCN marker_vcn = 0;

#ifdef DEBUG
	ntfs_debug("dst:");
	ntfs_debug_dump_runlist(drl);
	ntfs_debug("src:");
	ntfs_debug_dump_runlist(srl);
#endif

	/* Check for silly calling... */
	if (FUNC15(!srl))
		return drl;
	if (FUNC2(srl) || FUNC2(drl))
		return FUNC1(-EINVAL);

	/* Check for the case where the first mapping is being done now. */
	if (FUNC15(!drl)) {
		drl = srl;
		/* Complete the source runlist if necessary. */
		if (FUNC15(drl[0].vcn)) {
			/* Scan to the end of the source runlist. */
			for (dend = 0; FUNC3(drl[dend].length); dend++)
				;
			dend++;
			drl = FUNC11(drl, dend, dend + 1);
			if (FUNC2(drl))
				return drl;
			/* Insert start element at the front of the runlist. */
			FUNC10(drl, 1, 0, dend);
			drl[0].vcn = 0;
			drl[0].lcn = LCN_RL_NOT_MAPPED;
			drl[0].length = drl[1].vcn;
		}
		goto finished;
	}

	si = di = 0;

	/* Skip any unmapped start element(s) in the source runlist. */
	while (srl[si].length && srl[si].lcn < LCN_HOLE)
		si++;

	/* Can't have an entirely unmapped source runlist. */
	FUNC0(!srl[si].length);

	/* Record the starting points. */
	sstart = si;

	/*
	 * Skip forward in @drl until we reach the position where @srl needs to
	 * be inserted. If we reach the end of @drl, @srl just needs to be
	 * appended to @drl.
	 */
	for (; drl[di].length; di++) {
		if (drl[di].vcn + drl[di].length > srl[sstart].vcn)
			break;
	}
	dins = di;

	/* Sanity check for illegal overlaps. */
	if ((drl[di].vcn == srl[si].vcn) && (drl[di].lcn >= 0) &&
			(srl[si].lcn >= 0)) {
		FUNC6(NULL, "Run lists overlap. Cannot merge!");
		return FUNC1(-ERANGE);
	}

	/* Scan to the end of both runlists in order to know their sizes. */
	for (send = si; srl[send].length; send++)
		;
	for (dend = di; drl[dend].length; dend++)
		;

	if (srl[send].lcn == LCN_ENOENT)
		marker_vcn = srl[marker = send].vcn;

	/* Scan to the last element with lcn >= LCN_HOLE. */
	for (sfinal = send; sfinal >= 0 && srl[sfinal].lcn < LCN_HOLE; sfinal--)
		;
	for (dfinal = dend; dfinal >= 0 && drl[dfinal].lcn < LCN_HOLE; dfinal--)
		;

	{
	bool start;
	bool finish;
	int ds = dend + 1;		/* Number of elements in drl & srl */
	int ss = sfinal - sstart + 1;

	start  = ((drl[dins].lcn <  LCN_RL_NOT_MAPPED) ||    /* End of file   */
		  (drl[dins].vcn == srl[sstart].vcn));	     /* Start of hole */
	finish = ((drl[dins].lcn >= LCN_RL_NOT_MAPPED) &&    /* End of file   */
		 ((drl[dins].vcn + drl[dins].length) <=      /* End of hole   */
		  (srl[send - 1].vcn + srl[send - 1].length)));

	/* Or we will lose an end marker. */
	if (finish && !drl[dins].length)
		ss++;
	if (marker && (drl[dins].vcn + drl[dins].length > srl[send - 1].vcn))
		finish = false;
#if 0
	ntfs_debug("dfinal = %i, dend = %i", dfinal, dend);
	ntfs_debug("sstart = %i, sfinal = %i, send = %i", sstart, sfinal, send);
	ntfs_debug("start = %i, finish = %i", start, finish);
	ntfs_debug("ds = %i, ss = %i, dins = %i", ds, ss, dins);
#endif
	if (start) {
		if (finish)
			drl = FUNC13(drl, ds, srl + sstart, ss, dins);
		else
			drl = FUNC9(drl, ds, srl + sstart, ss, dins);
	} else {
		if (finish)
			drl = FUNC8(drl, ds, srl + sstart, ss, dins);
		else
			drl = FUNC14(drl, ds, srl + sstart, ss, dins);
	}
	if (FUNC2(drl)) {
		FUNC6(NULL, "Merge failed.");
		return drl;
	}
	FUNC7(srl);
	if (marker) {
		FUNC4("Triggering marker code.");
		for (ds = dend; drl[ds].length; ds++)
			;
		/* We only need to care if @srl ended after @drl. */
		if (drl[ds].vcn <= marker_vcn) {
			int slots = 0;

			if (drl[ds].vcn == marker_vcn) {
				FUNC4("Old marker = 0x%llx, replacing "
						"with LCN_ENOENT.",
						(unsigned long long)
						drl[ds].lcn);
				drl[ds].lcn = LCN_ENOENT;
				goto finished;
			}
			/*
			 * We need to create an unmapped runlist element in
			 * @drl or extend an existing one before adding the
			 * ENOENT terminator.
			 */
			if (drl[ds].lcn == LCN_ENOENT) {
				ds--;
				slots = 1;
			}
			if (drl[ds].lcn != LCN_RL_NOT_MAPPED) {
				/* Add an unmapped runlist element. */
				if (!slots) {
					drl = FUNC12(drl, ds,
							ds + 2);
					slots = 2;
				}
				ds++;
				/* Need to set vcn if it isn't set already. */
				if (slots != 1)
					drl[ds].vcn = drl[ds - 1].vcn +
							drl[ds - 1].length;
				drl[ds].lcn = LCN_RL_NOT_MAPPED;
				/* We now used up a slot. */
				slots--;
			}
			drl[ds].length = marker_vcn - drl[ds].vcn;
			/* Finally add the ENOENT terminator. */
			ds++;
			if (!slots)
				drl = FUNC12(drl, ds, ds + 1);
			drl[ds].vcn = marker_vcn;
			drl[ds].lcn = LCN_ENOENT;
			drl[ds].length = (s64)0;
		}
	}
	}

finished:
	/* The merge was completed successfully. */
	FUNC4("Merged runlist:");
	FUNC5(drl);
	return drl;
}