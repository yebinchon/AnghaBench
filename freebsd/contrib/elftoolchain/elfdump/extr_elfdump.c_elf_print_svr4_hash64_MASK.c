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
typedef  size_t uintmax_t ;
typedef  int uint64_t ;
struct section {int /*<<< orphan*/  link; int /*<<< orphan*/  scn; int /*<<< orphan*/  name; } ;
struct TYPE_9__ {int /*<<< orphan*/ * e_ident; } ;
struct elfdump {int flags; TYPE_1__ ehdr; int /*<<< orphan*/  elf; } ;
typedef  int /*<<< orphan*/  idx ;
struct TYPE_10__ {int d_size; int* d_buf; int /*<<< orphan*/  d_type; } ;
typedef  TYPE_2__ Elf_Data ;

/* Variables and functions */
 size_t EI_DATA ; 
 int /*<<< orphan*/  ELF_T_XWORD ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int SOLARIS_FMT ; 
 int* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 () ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ ,TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct elfdump*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 

__attribute__((used)) static void
FUNC11(struct elfdump *ed, struct section *s)
{
	Elf_Data	*data, dst;
	uint64_t	*buf;
	uint64_t	*bucket, *chain;
	uint64_t	 nbucket, nchain;
	uint64_t	*bl, *c, j, maxl, total;
	size_t		 i;
	int		 elferr, first;
	char		 idx[10];

	if (ed->flags & SOLARIS_FMT)
		FUNC0("\nHash Section:  %s\n", s->name);
	else
		FUNC0("\nhash table (%s):\n", s->name);

	/*
	 * ALPHA uses 64-bit hash entries. Since libelf assumes that
	 * .hash section contains only 32-bit entry, an explicit
	 * gelf_xlatetom is needed here.
	 */
	(void) FUNC3();
	if ((data = FUNC4(s->scn, NULL)) == NULL) {
		elferr = FUNC3();
		if (elferr != 0)
			FUNC10("elf_rawdata failed: %s",
			    FUNC2(elferr));
		return;
	}
	data->d_type = ELF_T_XWORD;
	FUNC8(&dst, data, sizeof(Elf_Data));
	if (FUNC6(ed->elf, &dst, data,
		ed->ehdr.e_ident[EI_DATA]) != &dst) {
		FUNC10("gelf_xlatetom failed: %s", FUNC2(-1));
		return;
	}
	if (dst.d_size < 2 * sizeof(uint64_t)) {
		FUNC10(".hash section too small");
		return;
	}
	buf = dst.d_buf;
	nbucket = buf[0];
	nchain = buf[1];
	if (nbucket <= 0 || nchain <= 0) {
		FUNC10("Malformed .hash section");
		return;
	}
	if (dst.d_size != (nbucket + nchain + 2) * sizeof(uint64_t)) {
		FUNC10("Malformed .hash section");
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
					FUNC0("%10zu  ", i);
					first = 0;
				} else
					FUNC0("            ");
				FUNC9(idx, sizeof(idx), "[%zu]", (size_t)j);
				FUNC0("%-10s  ", idx);
				FUNC0("%s\n", FUNC7(ed, s->link, j));
			}
		}
		FUNC0("\n");
		total = 0;
		for (i = 0; i <= maxl; i++) {
			total += c[i] * i;
			FUNC0("%10ju  buckets contain %8zu symbols\n",
			    (uintmax_t)c[i], i);
		}
		FUNC0("%10ju  buckets         %8ju symbols (globals)\n",
		    (uintmax_t)nbucket, (uintmax_t)total);
	} else {
		FUNC0("\nnbucket: %ju\n", (uintmax_t)nbucket);
		FUNC0("nchain: %ju\n\n", (uintmax_t)nchain);
		for (i = 0; i < nbucket; i++)
			FUNC0("bucket[%zu]:\n\t%ju\n\n", i, (uintmax_t)bucket[i]);
		for (i = 0; i < nchain; i++)
			FUNC0("chain[%zu]:\n\t%ju\n\n", i, (uintmax_t)chain[i]);
	}

}