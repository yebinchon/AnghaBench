#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int uint64_t ;
typedef  int uint32_t ;
struct section {int /*<<< orphan*/  scn; } ;
struct TYPE_9__ {int /*<<< orphan*/ * e_ident; } ;
struct readelf {TYPE_1__ ehdr; int /*<<< orphan*/  elf; } ;
struct TYPE_10__ {int d_size; int* d_buf; int /*<<< orphan*/  d_type; } ;
typedef  TYPE_2__ Elf_Data ;

/* Variables and functions */
 size_t EI_DATA ; 
 int /*<<< orphan*/  ELF_T_XWORD ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ ,TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 

__attribute__((used)) static void
FUNC10(struct readelf *re, struct section *s)
{
	Elf_Data	*d, dst;
	uint64_t	*buf;
	uint64_t	 nbucket, nchain;
	uint64_t	*bucket, *chain;
	uint64_t	*bl, *c, maxl, total;
	int		 elferr, i, j;

	/*
	 * ALPHA uses 64-bit hash entries. Since libelf assumes that
	 * .hash section contains only 32-bit entry, an explicit
	 * gelf_xlatetom is needed here.
	 */
	(void) FUNC2();
	if ((d = FUNC3(s->scn, NULL)) == NULL) {
		elferr = FUNC2();
		if (elferr != 0)
			FUNC9("elf_rawdata failed: %s",
			    FUNC1(elferr));
		return;
	}
	d->d_type = ELF_T_XWORD;
	FUNC7(&dst, d, sizeof(Elf_Data));
	if (FUNC6(re->elf, &dst, d,
		re->ehdr.e_ident[EI_DATA]) != &dst) {
		FUNC9("gelf_xlatetom failed: %s", FUNC1(-1));
		return;
	}
	if (dst.d_size < 2 * sizeof(uint64_t)) {
		FUNC9(".hash section too small");
		return;
	}
	buf = dst.d_buf;
	nbucket = buf[0];
	nchain = buf[1];
	if (nbucket <= 0 || nchain <= 0) {
		FUNC9("Malformed .hash section");
		return;
	}
	if (d->d_size != (nbucket + nchain + 2) * sizeof(uint32_t)) {
		FUNC9("Malformed .hash section");
		return;
	}
	bucket = &buf[2];
	chain = &buf[2 + nbucket];

	maxl = 0;
	if ((bl = FUNC0(nbucket, sizeof(*bl))) == NULL)
		FUNC4(EXIT_FAILURE, "calloc failed");
	for (i = 0; (uint32_t)i < nbucket; i++)
		for (j = bucket[i]; j > 0 && (uint32_t)j < nchain; j = chain[j])
			if (++bl[i] > maxl)
				maxl = bl[i];
	if ((c = FUNC0(maxl + 1, sizeof(*c))) == NULL)
		FUNC4(EXIT_FAILURE, "calloc failed");
	for (i = 0; (uint64_t)i < nbucket; i++)
		c[bl[i]]++;
	FUNC8("Histogram for bucket list length (total of %ju buckets):\n",
	    (uintmax_t)nbucket);
	FUNC8(" Length\tNumber\t\t%% of total\tCoverage\n");
	total = 0;
	for (i = 0; (uint64_t)i <= maxl; i++) {
		total += c[i] * i;
		FUNC8("%7u\t%-10ju\t(%5.1f%%)\t%5.1f%%\n", i, (uintmax_t)c[i],
		    c[i] * 100.0 / nbucket, total * 100.0 / (nchain - 1));
	}
	FUNC5(c);
	FUNC5(bl);
}