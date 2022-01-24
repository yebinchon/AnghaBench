#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_9__ {scalar_t__ d_size; int /*<<< orphan*/ * d_buf; } ;
struct TYPE_8__ {int /*<<< orphan*/  e_entry; } ;
struct TYPE_7__ {int sh_flags; scalar_t__ sh_type; scalar_t__ sh_size; int sh_addr; } ;
typedef  TYPE_1__ GElf_Shdr ;
typedef  TYPE_2__ GElf_Ehdr ;
typedef  int /*<<< orphan*/  Elf_Scn ;
typedef  TYPE_3__ Elf_Data ;
typedef  int /*<<< orphan*/  Elf ;

/* Variables and functions */
 int /*<<< orphan*/  ELF_C_READ ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int SHF_ALLOC ; 
 scalar_t__ SHT_NOBITS ; 
 int /*<<< orphan*/ * FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int,int,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 

void
FUNC13(int ifd, int ofd)
{
	Elf *e;
	Elf_Scn *scn;
	Elf_Data *d;
	GElf_Ehdr eh;
	GElf_Shdr sh;
	int elferr;
	uint16_t addr_hi, old_addr_hi;

	if ((e = FUNC0(ifd, ELF_C_READ, NULL)) == NULL)
		FUNC5(EXIT_FAILURE, "elf_begin() failed: %s",
		    FUNC1(-1));

	old_addr_hi = 0;
	scn = NULL;
	while ((scn = FUNC4(e, scn)) != NULL) {
		if (FUNC7(scn, &sh) == NULL) {
			FUNC12("gelf_getshdr failed: %s", FUNC1(-1));
			(void) FUNC2();
			continue;
		}
		if ((sh.sh_flags & SHF_ALLOC) == 0 ||
		    sh.sh_type == SHT_NOBITS ||
		    sh.sh_size == 0)
			continue;
		if (sh.sh_addr > 0xFFFFFFFF) {
			FUNC12("address space too big for Intel Hex file");
			continue;
		}
		(void) FUNC2();
		if ((d = FUNC3(scn, NULL)) == NULL) {
			elferr = FUNC2();
			if (elferr != 0)
				FUNC12("elf_getdata failed: %s", FUNC1(-1));
			continue;
		}
		if (d->d_buf == NULL || d->d_size == 0)
			continue;
		addr_hi = (sh.sh_addr >> 16) & 0xFFFF;
		if (addr_hi > 0 && addr_hi != old_addr_hi) {
			/* Write 04 record if addr_hi is new. */
			old_addr_hi = addr_hi;
			FUNC10(ofd, addr_hi);
		}
		FUNC8(ofd, sh.sh_addr, d->d_buf, d->d_size);
	}
	elferr = FUNC2();
	if (elferr != 0)
		FUNC12("elf_nextscn failed: %s", FUNC1(elferr));

	if (FUNC6(e, &eh) == NULL)
		FUNC5(EXIT_FAILURE, "gelf_getehdr() failed: %s",
		    FUNC1(-1));
	FUNC11(ofd, eh.e_entry);
	FUNC9(ofd);
}