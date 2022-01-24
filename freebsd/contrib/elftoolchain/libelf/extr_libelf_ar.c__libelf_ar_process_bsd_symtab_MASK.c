#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  void* off_t ;
struct TYPE_9__ {int e_rawsymtabsz; size_t e_symtabsz; TYPE_3__* e_symtab; scalar_t__ e_rawsymtab; } ;
struct TYPE_10__ {TYPE_1__ e_ar; } ;
struct TYPE_12__ {size_t e_rawsize; TYPE_2__ e_u; } ;
struct TYPE_11__ {unsigned long as_hash; char* as_name; void* as_off; } ;
typedef  TYPE_3__ Elf_Arsym ;
typedef  TYPE_4__ Elf ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RESOURCE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 TYPE_3__* FUNC5 (int) ; 

Elf_Arsym *
FUNC6(Elf *e, size_t *count)
{
	Elf_Arsym *symtab, *sym;
	unsigned int n, nentries;
	unsigned char *end, *p, *p0, *s, *s0;
	const size_t entrysize = 2 * sizeof(long);
	long arraysize, fileoffset, stroffset, strtabsize;

	FUNC2(e != NULL);
	FUNC2(count != NULL);
	FUNC2(e->e_u.e_ar.e_symtab == NULL);

	symtab = NULL;

	/*
	 * The BSD symbol table always contains the count fields even
	 * if there are no entries in it.
	 */
	if (e->e_u.e_ar.e_rawsymtabsz < 2 * sizeof(long))
		goto symtaberror;

	p = p0 = (unsigned char *) e->e_u.e_ar.e_rawsymtab;
	end = p0 + e->e_u.e_ar.e_rawsymtabsz;

	/*
	 * Retrieve the size of the array of ranlib descriptors and
	 * check it for validity.
	 */
	FUNC0(p, arraysize);

	if (arraysize < 0 || p0 + arraysize >= end ||
	    ((size_t) arraysize % entrysize != 0))
		goto symtaberror;

	/*
	 * Check the value of the string table size.
	 */
	s = p + arraysize;
	FUNC0(s, strtabsize);

	s0 = s;			/* Start of string table. */
	if (strtabsize < 0 || s0 + strtabsize > end)
		goto symtaberror;

	nentries = (size_t) arraysize / entrysize;

	/*
	 * Allocate space for the returned Elf_Arsym array.
	 */
	if ((symtab = FUNC5(sizeof(Elf_Arsym) * (nentries + 1))) == NULL) {
		FUNC1(RESOURCE, 0);
		return (NULL);
	}

	/* Read in symbol table entries. */
	for (n = 0, sym = symtab; n < nentries; n++, sym++) {
		FUNC0(p, stroffset);
		FUNC0(p, fileoffset);

		if (stroffset < 0 || fileoffset <  0 ||
		    (size_t) fileoffset >= e->e_rawsize)
			goto symtaberror;

		s = s0 + stroffset;

		if (s >= end)
			goto symtaberror;

		sym->as_off = (off_t) fileoffset;
		sym->as_hash = FUNC3((char *) s);
		sym->as_name = (char *) s;
	}

	/* Fill up the sentinel entry. */
	sym->as_name = NULL;
	sym->as_hash = ~0UL;
	sym->as_off = (off_t) 0;

	/* Remember the processed symbol table. */
	e->e_u.e_ar.e_symtab = symtab;

	*count = e->e_u.e_ar.e_symtabsz = nentries + 1;

	return (symtab);

symtaberror:
	if (symtab)
		FUNC4(symtab);
	FUNC1(ARCHIVE, 0);
	return (NULL);
}