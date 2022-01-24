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
struct version_info {int version; int /*<<< orphan*/  hdr_size; } ;
struct fdt_reserve_entry {int dummy; } ;
struct fdt_header {int /*<<< orphan*/  totalsize; } ;
struct dt_info {int /*<<< orphan*/  boot_cpuid_phys; int /*<<< orphan*/  reservelist; int /*<<< orphan*/  dt; } ;
struct data {int /*<<< orphan*/  len; int /*<<< orphan*/  val; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (int,scalar_t__) ; 
 int FUNC1 (struct version_info*) ; 
 int /*<<< orphan*/  FDT_END ; 
 scalar_t__ alignsize ; 
 int /*<<< orphan*/  FUNC2 (struct data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bin_emitter ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct data FUNC4 (struct data,int) ; 
 struct data FUNC5 (struct data,struct fdt_header*,int /*<<< orphan*/ ) ; 
 struct data FUNC6 (struct data,int) ; 
 int /*<<< orphan*/  FUNC7 (struct data) ; 
 struct data FUNC8 (struct data,struct data) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 struct data empty_data ; 
 int /*<<< orphan*/  errno ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 struct data FUNC12 (int /*<<< orphan*/ ,struct version_info*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct data*,struct data*,struct version_info*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int,scalar_t__) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct fdt_header*,struct version_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ minsize ; 
 int padsize ; 
 int quiet ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 struct version_info* version_table ; 

void FUNC18(FILE *f, struct dt_info *dti, int version)
{
	struct version_info *vi = NULL;
	int i;
	struct data blob       = empty_data;
	struct data reservebuf = empty_data;
	struct data dtbuf      = empty_data;
	struct data strbuf     = empty_data;
	struct fdt_header fdt;
	int padlen = 0;

	for (i = 0; i < FUNC1(version_table); i++) {
		if (version_table[i].version == version)
			vi = &version_table[i];
	}
	if (!vi)
		FUNC9("Unknown device tree blob version %d\n", version);

	FUNC13(dti->dt, &bin_emitter, &dtbuf, &strbuf, vi);
	FUNC2(&dtbuf, FDT_END);

	reservebuf = FUNC12(dti->reservelist, vi);

	/* Make header */
	FUNC16(&fdt, vi, reservebuf.len, dtbuf.len, strbuf.len,
			dti->boot_cpuid_phys);

	/*
	 * If the user asked for more space than is used, adjust the totalsize.
	 */
	if (minsize > 0) {
		padlen = minsize - FUNC10(fdt.totalsize);
		if (padlen < 0) {
			padlen = 0;
			if (quiet < 1)
				FUNC14(stderr,
					"Warning: blob size %d >= minimum size %d\n",
					FUNC10(fdt.totalsize), minsize);
		}
	}

	if (padsize > 0)
		padlen = padsize;

	if (alignsize > 0)
		padlen = FUNC0(FUNC10(fdt.totalsize) + padlen, alignsize)
			- FUNC10(fdt.totalsize);

	if (padlen > 0) {
		int tsize = FUNC10(fdt.totalsize);
		tsize += padlen;
		fdt.totalsize = FUNC3(tsize);
	}

	/*
	 * Assemble the blob: start with the header, add with alignment
	 * the reserve buffer, add the reserve map terminating zeroes,
	 * the device tree itself, and finally the strings.
	 */
	blob = FUNC5(blob, &fdt, vi->hdr_size);
	blob = FUNC4(blob, 8);
	blob = FUNC8(blob, reservebuf);
	blob = FUNC6(blob, sizeof(struct fdt_reserve_entry));
	blob = FUNC8(blob, dtbuf);
	blob = FUNC8(blob, strbuf);

	/*
	 * If the user asked for more space than is used, pad out the blob.
	 */
	if (padlen > 0)
		blob = FUNC6(blob, padlen);

	if (FUNC15(blob.val, blob.len, 1, f) != 1) {
		if (FUNC11(f))
			FUNC9("Error writing device tree blob: %s\n",
			    FUNC17(errno));
		else
			FUNC9("Short write on device tree blob\n");
	}

	/*
	 * data_merge() frees the right-hand element so only the blob
	 * remains to be freed.
	 */
	FUNC7(blob);
}