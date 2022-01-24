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
typedef  int uint64_t ;
typedef  int uint32_t ;
struct section {size_t link; int /*<<< orphan*/  scn; int /*<<< orphan*/  name; } ;
struct elfdump {int flags; size_t shnum; scalar_t__ ec; struct section* sl; } ;
typedef  int /*<<< orphan*/  idx ;
struct TYPE_3__ {int d_size; int* d_buf; } ;
typedef  TYPE_1__ Elf_Data ;

/* Variables and functions */
 scalar_t__ ELFCLASS32 ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int SOLARIS_FMT ; 
 int* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 () ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct section*,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct elfdump*,size_t,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 

__attribute__((used)) static void
FUNC10(struct elfdump *ed, struct section *s)
{
	struct section	*ds;
	Elf_Data	*data;
	uint32_t	*buf;
	uint32_t	*bucket, *chain;
	uint32_t	 nbucket, nchain, symndx, maskwords, shift2;
	uint32_t	*bl, *c, maxl, total;
	uint32_t	 i, j;
	int		 first, elferr, dynsymcount;
	char		 idx[10];

	if (ed->flags & SOLARIS_FMT)
		FUNC0("\nGNU Hash Section:  %s\n", s->name);
	else
		FUNC0("\ngnu hash table (%s):\n", s->name);
	(void) FUNC3();
	if ((data = FUNC4(s->scn, NULL)) == NULL) {
		elferr = FUNC3();
		if (elferr != 0)
			FUNC9("elf_getdata failed: %s",
			    FUNC2(elferr));
		return;
	}
	if (data->d_size < 4 * sizeof(uint32_t)) {
		FUNC9(".gnu.hash section too small");
		return;
	}
	buf = data->d_buf;
	nbucket = buf[0];
	symndx = buf[1];
	maskwords = buf[2];
	shift2 = buf[3];
	buf += 4;
	if (s->link >= ed->shnum) {
		FUNC9("Malformed .gnu.hash section");
		return;
	}
	ds = &ed->sl[s->link];
	if (!FUNC6(ds, &dynsymcount))
		return;
	if (symndx >= (uint32_t)dynsymcount) {
		FUNC9("Malformed .gnu.hash section");
		return;
	}
	nchain = dynsymcount - symndx;
	if (data->d_size != 4 * sizeof(uint32_t) + maskwords *
	    (ed->ec == ELFCLASS32 ? sizeof(uint32_t) : sizeof(uint64_t)) +
	    ((uint64_t)nbucket + (uint64_t)nchain) * sizeof(uint32_t)) {
		FUNC9("Malformed .gnu.hash section");
		return;
	}
	bucket = buf + (ed->ec == ELFCLASS32 ? maskwords : maskwords * 2);
	chain = bucket + nbucket;

	if (ed->flags & SOLARIS_FMT) {
		maxl = 0;
		if ((bl = FUNC1(nbucket, sizeof(*bl))) == NULL)
			FUNC5(EXIT_FAILURE, "calloc failed");
		for (i = 0; i < nbucket; i++)
			for (j = bucket[i]; j > 0 && j - symndx < nchain; j++) {
				if (++bl[i] > maxl)
					maxl = bl[i];
				if (chain[j - symndx] & 1)
					break;
			}
		if ((c = FUNC1(maxl + 1, sizeof(*c))) == NULL)
			FUNC5(EXIT_FAILURE, "calloc failed");
		for (i = 0; i < nbucket; i++)
			c[bl[i]]++;
		FUNC0("    bucket    symndx    name\n");
		for (i = 0; i < nbucket; i++) {
			first = 1;
			for (j = bucket[i]; j > 0 && j - symndx < nchain; j++) {
				if (first) {
					FUNC0("%10d  ", i);
					first = 0;
				} else
					FUNC0("            ");
				FUNC8(idx, sizeof(idx), "[%d]", j );
				FUNC0("%-10s  ", idx);
				FUNC0("%s\n", FUNC7(ed, s->link, j));
				if (chain[j - symndx] & 1)
					break;
			}
		}
		FUNC0("\n");
		total = 0;
		for (i = 0; i <= maxl; i++) {
			total += c[i] * i;
			FUNC0("%10u  buckets contain %8d symbols\n", c[i], i);
		}
		FUNC0("%10u  buckets         %8u symbols (globals)\n", nbucket,
		    total);
	} else {
		FUNC0("\nnbucket: %u\n", nbucket);
		FUNC0("symndx: %u\n", symndx);
		FUNC0("maskwords: %u\n", maskwords);
		FUNC0("shift2: %u\n", shift2);
		FUNC0("nchain: %u\n\n", nchain);
		for (i = 0; i < nbucket; i++)
			FUNC0("bucket[%d]:\n\t%u\n\n", i, bucket[i]);
		for (i = 0; i < nchain; i++)
			FUNC0("chain[%d]:\n\t%u\n\n", i, chain[i]);
	}
}