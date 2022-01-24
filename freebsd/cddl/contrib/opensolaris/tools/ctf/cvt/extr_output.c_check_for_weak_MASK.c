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
typedef  scalar_t__ uchar_t ;
struct TYPE_10__ {scalar_t__ d_buf; } ;
struct TYPE_9__ {int st_name; scalar_t__ st_value; scalar_t__ st_size; scalar_t__ st_shndx; scalar_t__ st_info; } ;
typedef  TYPE_1__ GElf_Sym ;
typedef  TYPE_2__ Elf_Data ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ STB_LOCAL ; 
 scalar_t__ STB_WEAK ; 
 scalar_t__ STT_FILE ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__*,int,TYPE_1__*) ; 
 scalar_t__ FUNC3 (char*,char const*) ; 

__attribute__((used)) static int
FUNC4(GElf_Sym *weak, char const *weakfile,
    Elf_Data *data, int nent, Elf_Data *strdata,
    GElf_Sym *retsym, char **curfilep)
{
	char *curfile = NULL;
	char *tmpfile1 = NULL;
	GElf_Sym tmpsym;
	int candidate = 0;
	int i;
	tmpsym.st_info = 0;
	tmpsym.st_name = 0;

	if (FUNC0(weak->st_info) != STB_WEAK)
		return (0);

	for (i = 0; i < nent; i++) {
		GElf_Sym sym;
		uchar_t type;

		if (FUNC2(data, i, &sym) == NULL)
			continue;

		type = FUNC1(sym.st_info);

		if (type == STT_FILE)
			curfile = (char *)strdata->d_buf + sym.st_name;

		if (FUNC1(weak->st_info) != type ||
		    weak->st_value != sym.st_value)
			continue;

		if (weak->st_size != sym.st_size)
			continue;

		if (FUNC0(sym.st_info) == STB_WEAK)
			continue;

		if (sym.st_shndx != weak->st_shndx)
			continue;

		if (FUNC0(sym.st_info) == STB_LOCAL &&
		    (curfile == NULL || weakfile == NULL ||
		    FUNC3(curfile, weakfile) != 0)) {
			candidate = 1;
			tmpfile1 = curfile;
			tmpsym = sym;
			continue;
		}

		*curfilep = curfile;
		*retsym = sym;
		return (1);
	}

	if (candidate) {
		*curfilep = tmpfile1;
		*retsym = tmpsym;
		return (1);
	}

	return (0);
}