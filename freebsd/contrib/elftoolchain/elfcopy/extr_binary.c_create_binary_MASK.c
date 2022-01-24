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
typedef  scalar_t__ ssize_t ;
typedef  int off_t ;
struct TYPE_6__ {scalar_t__ d_size; int /*<<< orphan*/ * d_buf; } ;
struct TYPE_5__ {int sh_flags; scalar_t__ sh_type; scalar_t__ sh_size; int sh_offset; int sh_addr; } ;
typedef  TYPE_1__ GElf_Shdr ;
typedef  int /*<<< orphan*/  Elf_Scn ;
typedef  TYPE_2__ Elf_Data ;
typedef  int Elf64_Addr ;
typedef  int /*<<< orphan*/  Elf ;

/* Variables and functions */
 int /*<<< orphan*/  ELF_C_READ ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int SHF_ALLOC ; 
 scalar_t__ SHT_NOBITS ; 
 int /*<<< orphan*/ * FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC8 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int,int /*<<< orphan*/ *,scalar_t__) ; 

void
FUNC11(int ifd, int ofd)
{
	Elf *e;
	Elf_Scn *scn;
	Elf_Data *d;
	Elf64_Addr baseaddr;
	GElf_Shdr sh;
	off_t baseoff, off;
	int elferr;

	if ((e = FUNC0(ifd, ELF_C_READ, NULL)) == NULL)
		FUNC6(EXIT_FAILURE, "elf_begin() failed: %s",
		    FUNC1(-1));

	baseaddr = 0;
	baseoff = 0;
	if (FUNC8(ofd, baseoff, SEEK_SET) < 0)
		FUNC5(EXIT_FAILURE, "lseek failed");

	/*
	 * Find base offset in the first iteration.
	 */
	baseoff = -1;
	scn = NULL;
	while ((scn = FUNC3(e, scn)) != NULL) {
		if (FUNC7(scn, &sh) == NULL) {
			FUNC9("gelf_getshdr failed: %s", FUNC1(-1));
			(void) FUNC2();
			continue;
		}
		if ((sh.sh_flags & SHF_ALLOC) == 0 ||
		    sh.sh_type == SHT_NOBITS ||
		    sh.sh_size == 0)
			continue;
		if (baseoff == -1 || (off_t) sh.sh_offset < baseoff) {
			baseoff = sh.sh_offset;
			baseaddr = sh.sh_addr;
		}
	}
	elferr = FUNC2();
	if (elferr != 0)
		FUNC9("elf_nextscn failed: %s", FUNC1(elferr));

	if (baseoff == -1)
		return;

	/*
	 * Write out sections in the second iteration.
	 */
	scn = NULL;
	while ((scn = FUNC3(e, scn)) != NULL) {
		if (FUNC7(scn, &sh) == NULL) {
			FUNC9("gelf_getshdr failed: %s", FUNC1(-1));
			(void) FUNC2();
			continue;
		}
		if ((sh.sh_flags & SHF_ALLOC) == 0 ||
		    sh.sh_type == SHT_NOBITS ||
		    sh.sh_size == 0)
			continue;
		(void) FUNC2();
		if ((d = FUNC4(scn, NULL)) == NULL) {
			elferr = FUNC2();
			if (elferr != 0)
				FUNC9("elf_rawdata failed: %s", FUNC1(-1));
			continue;
		}
		if (d->d_buf == NULL || d->d_size == 0)
			continue;

		/* lseek to section offset relative to `baseaddr'. */
		off = sh.sh_addr - baseaddr;
		if (FUNC8(ofd, off, SEEK_SET) < 0)
			FUNC5(EXIT_FAILURE, "lseek failed");

		/* Write out section contents. */
		if (FUNC10(ofd, d->d_buf, d->d_size) != (ssize_t) d->d_size)
			FUNC5(EXIT_FAILURE, "write failed");
	}
	elferr = FUNC2();
	if (elferr != 0)
		FUNC9("elf_nextscn failed: %s", FUNC1(elferr));
}