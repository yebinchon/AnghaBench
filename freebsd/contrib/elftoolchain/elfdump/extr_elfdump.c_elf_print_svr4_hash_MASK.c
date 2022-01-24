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
struct section {int /*<<< orphan*/  link; int /*<<< orphan*/  scn; int /*<<< orphan*/  name; } ;
struct elfdump {int flags; } ;
typedef  int /*<<< orphan*/  idx ;
struct TYPE_3__ {int d_size; int* d_buf; } ;
typedef  TYPE_1__ Elf_Data ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int SOLARIS_FMT ; 
 int* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 () ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct elfdump*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 

__attribute__((used)) static void
FUNC9(struct elfdump *ed, struct section *s)
{
	Elf_Data	*data;
	uint32_t	*buf;
	uint32_t	*bucket, *chain;
	uint32_t	 nbucket, nchain;
	uint32_t	*bl, *c, maxl, total;
	uint32_t	 i, j;
	int		 first, elferr;
	char		 idx[10];

	if (ed->flags & SOLARIS_FMT)
		FUNC0("\nHash Section:  %s\n", s->name);
	else
		FUNC0("\nhash table (%s):\n", s->name);
	(void) FUNC3();
	if ((data = FUNC4(s->scn, NULL)) == NULL) {
		elferr = FUNC3();
		if (elferr != 0)
			FUNC8("elf_getdata failed: %s",
			    FUNC2(elferr));
		return;
	}
	if (data->d_size < 2 * sizeof(uint32_t)) {
		FUNC8(".hash section too small");
		return;
	}
	buf = data->d_buf;
	nbucket = buf[0];
	nchain = buf[1];
	if (nbucket <= 0 || nchain <= 0) {
		FUNC8("Malformed .hash section");
		return;
	}
	if (data->d_size !=
	    ((uint64_t)nbucket + (uint64_t)nchain + 2) * sizeof(uint32_t)) {
		FUNC8("Malformed .hash section");
		return;
	}
	bucket = &buf[2];
	chain = &buf[2 + nbucket];

	if (ed->flags & SOLARIS_FMT) {
		maxl = 0;
		if ((bl = FUNC1(nbucket, sizeof(*bl))) == NULL)
			FUNC5(EXIT_FAILURE, "calloc failed");
		for (i = 0; i < nbucket; i++)
			for (j = bucket[i]; j > 0 && j < nchain; j = chain[j])
				if (++bl[i] > maxl)
					maxl = bl[i];
		if ((c = FUNC1(maxl + 1, sizeof(*c))) == NULL)
			FUNC5(EXIT_FAILURE, "calloc failed");
		for (i = 0; i < nbucket; i++)
			c[bl[i]]++;
		FUNC0("    bucket    symndx    name\n");
		for (i = 0; i < nbucket; i++) {
			first = 1;
			for (j = bucket[i]; j > 0 && j < nchain; j = chain[j]) {
				if (first) {
					FUNC0("%10d  ", i);
					first = 0;
				} else
					FUNC0("            ");
				FUNC7(idx, sizeof(idx), "[%d]", j);
				FUNC0("%-10s  ", idx);
				FUNC0("%s\n", FUNC6(ed, s->link, j));
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
		FUNC0("nchain: %u\n\n", nchain);
		for (i = 0; i < nbucket; i++)
			FUNC0("bucket[%d]:\n\t%u\n\n", i, bucket[i]);
		for (i = 0; i < nchain; i++)
			FUNC0("chain[%d]:\n\t%u\n\n", i, chain[i]);
	}
}