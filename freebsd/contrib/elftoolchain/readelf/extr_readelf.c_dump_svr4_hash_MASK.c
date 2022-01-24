#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct section {int /*<<< orphan*/  scn; } ;
struct TYPE_3__ {int d_size; int* d_buf; } ;
typedef  TYPE_1__ Elf_Data ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 

__attribute__((used)) static void
FUNC8(struct section *s)
{
	Elf_Data	*d;
	uint32_t	*buf;
	uint32_t	 nbucket, nchain;
	uint32_t	*bucket, *chain;
	uint32_t	*bl, *c, maxl, total;
	int		 elferr, i, j;

	/* Read and parse the content of .hash section. */
	(void) FUNC2();
	if ((d = FUNC3(s->scn, NULL)) == NULL) {
		elferr = FUNC2();
		if (elferr != 0)
			FUNC7("elf_getdata failed: %s", FUNC1(elferr));
		return;
	}
	if (d->d_size < 2 * sizeof(uint32_t)) {
		FUNC7(".hash section too small");
		return;
	}
	buf = d->d_buf;
	nbucket = buf[0];
	nchain = buf[1];
	if (nbucket <= 0 || nchain <= 0) {
		FUNC7("Malformed .hash section");
		return;
	}
	if (d->d_size != (nbucket + nchain + 2) * sizeof(uint32_t)) {
		FUNC7("Malformed .hash section");
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
	for (i = 0; (uint32_t)i < nbucket; i++)
		c[bl[i]]++;
	FUNC6("\nHistogram for bucket list length (total of %u buckets):\n",
	    nbucket);
	FUNC6(" Length\tNumber\t\t%% of total\tCoverage\n");
	total = 0;
	for (i = 0; (uint32_t)i <= maxl; i++) {
		total += c[i] * i;
		FUNC6("%7u\t%-10u\t(%5.1f%%)\t%5.1f%%\n", i, c[i],
		    c[i] * 100.0 / nbucket, total * 100.0 / (nchain - 1));
	}
	FUNC5(c);
	FUNC5(bl);
}