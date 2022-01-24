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
struct data {int /*<<< orphan*/  len; int /*<<< orphan*/  val; } ;
struct boot_info {int /*<<< orphan*/  boot_cpuid_phys; int /*<<< orphan*/  reservelist; int /*<<< orphan*/  dt; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (struct version_info*) ; 
 int /*<<< orphan*/  FDT_END ; 
 int /*<<< orphan*/  FUNC1 (struct data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bin_emitter ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct data FUNC3 (struct data,int) ; 
 struct data FUNC4 (struct data,struct fdt_header*,int /*<<< orphan*/ ) ; 
 struct data FUNC5 (struct data,int) ; 
 int /*<<< orphan*/  FUNC6 (struct data) ; 
 struct data FUNC7 (struct data,struct data) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 struct data empty_data ; 
 int /*<<< orphan*/  errno ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 struct data FUNC11 (int /*<<< orphan*/ ,struct version_info*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct data*,struct data*,struct version_info*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct fdt_header*,struct version_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ minsize ; 
 int padsize ; 
 int quiet ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 struct version_info* version_table ; 

void FUNC17(FILE *f, struct boot_info *bi, int version)
{
	struct version_info *vi = NULL;
	int i;
	struct data blob       = empty_data;
	struct data reservebuf = empty_data;
	struct data dtbuf      = empty_data;
	struct data strbuf     = empty_data;
	struct fdt_header fdt;
	int padlen = 0;

	for (i = 0; i < FUNC0(version_table); i++) {
		if (version_table[i].version == version)
			vi = &version_table[i];
	}
	if (!vi)
		FUNC8("Unknown device tree blob version %d\n", version);

	FUNC12(bi->dt, &bin_emitter, &dtbuf, &strbuf, vi);
	FUNC1(&dtbuf, FDT_END);

	reservebuf = FUNC11(bi->reservelist, vi);

	/* Make header */
	FUNC15(&fdt, vi, reservebuf.len, dtbuf.len, strbuf.len,
			bi->boot_cpuid_phys);

	/*
	 * If the user asked for more space than is used, adjust the totalsize.
	 */
	if (minsize > 0) {
		padlen = minsize - FUNC9(fdt.totalsize);
		if ((padlen < 0) && (quiet < 1))
			FUNC13(stderr,
				"Warning: blob size %d >= minimum size %d\n",
				FUNC9(fdt.totalsize), minsize);
	}

	if (padsize > 0)
		padlen = padsize;

	if (padlen > 0) {
		int tsize = FUNC9(fdt.totalsize);
		tsize += padlen;
		fdt.totalsize = FUNC2(tsize);
	}

	/*
	 * Assemble the blob: start with the header, add with alignment
	 * the reserve buffer, add the reserve map terminating zeroes,
	 * the device tree itself, and finally the strings.
	 */
	blob = FUNC4(blob, &fdt, vi->hdr_size);
	blob = FUNC3(blob, 8);
	blob = FUNC7(blob, reservebuf);
	blob = FUNC5(blob, sizeof(struct fdt_reserve_entry));
	blob = FUNC7(blob, dtbuf);
	blob = FUNC7(blob, strbuf);

	/*
	 * If the user asked for more space than is used, pad out the blob.
	 */
	if (padlen > 0)
		blob = FUNC5(blob, padlen);

	FUNC14(blob.val, blob.len, 1, f);

	if (FUNC10(f))
		FUNC8("Error writing device tree blob: %s\n", FUNC16(errno));

	/*
	 * data_merge() frees the right-hand element so only the blob
	 * remains to be freed.
	 */
	FUNC6(blob);
}