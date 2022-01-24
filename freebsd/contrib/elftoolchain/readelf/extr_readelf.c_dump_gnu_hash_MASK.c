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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;
struct section {size_t link; int /*<<< orphan*/  scn; } ;
struct readelf {size_t shnum; scalar_t__ ec; struct section* sl; } ;
struct TYPE_3__ {int d_size; int* d_buf; } ;
typedef  TYPE_1__ Elf_Data ;

/* Variables and functions */
 scalar_t__ ELFCLASS32 ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 
 int /*<<< orphan*/  FUNC6 (struct section*,int*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 

__attribute__((used)) static void
FUNC9(struct readelf *re, struct section *s)
{
	struct section	*ds;
	Elf_Data	*d;
	uint32_t	*buf;
	uint32_t	*bucket, *chain;
	uint32_t	 nbucket, nchain, symndx, maskwords;
	uint32_t	*bl, *c, maxl, total;
	int		 elferr, dynsymcount, i, j;

	(void) FUNC2();
	if ((d = FUNC3(s->scn, NULL)) == NULL) {
		elferr = FUNC2();
		if (elferr != 0)
			FUNC8("elf_getdata failed: %s",
			    FUNC1(elferr));
		return;
	}
	if (d->d_size < 4 * sizeof(uint32_t)) {
		FUNC8(".gnu.hash section too small");
		return;
	}
	buf = d->d_buf;
	nbucket = buf[0];
	symndx = buf[1];
	maskwords = buf[2];
	buf += 4;
	if (s->link >= re->shnum)
		return;
	ds = &re->sl[s->link];
	if (!FUNC6(ds, &dynsymcount))
		return;
	if (symndx >= (uint32_t)dynsymcount) {
		FUNC8("Malformed .gnu.hash section (symndx out of range)");
		return;
	}
	nchain = dynsymcount - symndx;
	if (d->d_size != 4 * sizeof(uint32_t) + maskwords *
	    (re->ec == ELFCLASS32 ? sizeof(uint32_t) : sizeof(uint64_t)) +
	    (nbucket + nchain) * sizeof(uint32_t)) {
		FUNC8("Malformed .gnu.hash section");
		return;
	}
	bucket = buf + (re->ec == ELFCLASS32 ? maskwords : maskwords * 2);
	chain = bucket + nbucket;

	maxl = 0;
	if ((bl = FUNC0(nbucket, sizeof(*bl))) == NULL)
		FUNC4(EXIT_FAILURE, "calloc failed");
	for (i = 0; (uint32_t)i < nbucket; i++)
		for (j = bucket[i]; j > 0 && (uint32_t)j - symndx < nchain;
		     j++) {
			if (++bl[i] > maxl)
				maxl = bl[i];
			if (chain[j - symndx] & 1)
				break;
		}
	if ((c = FUNC0(maxl + 1, sizeof(*c))) == NULL)
		FUNC4(EXIT_FAILURE, "calloc failed");
	for (i = 0; (uint32_t)i < nbucket; i++)
		c[bl[i]]++;
	FUNC7("Histogram for bucket list length (total of %u buckets):\n",
	    nbucket);
	FUNC7(" Length\tNumber\t\t%% of total\tCoverage\n");
	total = 0;
	for (i = 0; (uint32_t)i <= maxl; i++) {
		total += c[i] * i;
		FUNC7("%7u\t%-10u\t(%5.1f%%)\t%5.1f%%\n", i, c[i],
		    c[i] * 100.0 / nbucket, total * 100.0 / (nchain - 1));
	}
	FUNC5(c);
	FUNC5(bl);
}