#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct stat {int /*<<< orphan*/  st_size; } ;
struct TYPE_6__ {scalar_t__ e_shnum; scalar_t__ e_type; } ;
struct TYPE_5__ {scalar_t__ sh_type; int sh_flags; int /*<<< orphan*/  sh_size; int /*<<< orphan*/  sh_offset; } ;
typedef  TYPE_1__ GElf_Shdr ;
typedef  TYPE_2__ GElf_Ehdr ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  Elf_Scn ;
typedef  int /*<<< orphan*/  Elf ;

/* Variables and functions */
 int /*<<< orphan*/  ELF_C_READ ; 
 scalar_t__ ELF_K_ELF ; 
 scalar_t__ ET_CORE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int SHF_ALLOC ; 
 scalar_t__ SHT_NOBITS ; 
 int /*<<< orphan*/ * FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ entire_file ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int,struct stat*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC9 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*) ; 

int
FUNC12(const char *name, FILE *pfile)
{
	struct stat buf;
	GElf_Ehdr elfhdr;
	GElf_Shdr shdr;
	Elf *elf;
	Elf_Scn *scn;
	int rc, fd;

	rc = 0;
	fd = FUNC4(pfile);
	if (FUNC6(fd, &buf) < 0)
		return (1);

	/* If entire file is chosen, treat it as a binary file */
	if (entire_file)
		return (FUNC9(name, pfile, buf.st_size));

	(void)FUNC10(fd, 0, SEEK_SET);
	elf = FUNC0(fd, ELF_C_READ, NULL);
	if (FUNC2(elf) != ELF_K_ELF) {
		(void)FUNC1(elf);
		return (FUNC9(name, pfile, buf.st_size));
	}

	if (FUNC7(elf, &elfhdr) == NULL) {
		(void)FUNC1(elf);
		FUNC11("%s: ELF file could not be processed", name);
		return (1);
	}

	if (elfhdr.e_shnum == 0 && elfhdr.e_type == ET_CORE) {
		(void)FUNC1(elf);
		return (FUNC9(name, pfile, buf.st_size));
	} else {
		scn = NULL;
		while ((scn = FUNC3(elf, scn)) != NULL) {
			if (FUNC8(scn, &shdr) == NULL)
				continue;
			if (shdr.sh_type != SHT_NOBITS &&
			    (shdr.sh_flags & SHF_ALLOC) != 0) {
				rc = FUNC5(name, pfile, shdr.sh_offset,
				    shdr.sh_size);
			}
		}
	}
	(void)FUNC1(elf);
	return (rc);
}