#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint64_t ;
struct _Elf_Extent {scalar_t__ ex_type; size_t ex_start; } ;
typedef  int /*<<< orphan*/  src ;
typedef  int /*<<< orphan*/  off_t ;
typedef  int /*<<< orphan*/  dst ;
struct TYPE_14__ {size_t e_nphdr; } ;
struct TYPE_15__ {TYPE_1__ e_elf; } ;
struct TYPE_19__ {int e_class; int /*<<< orphan*/  e_byteorder; int /*<<< orphan*/  e_version; TYPE_2__ e_u; } ;
struct TYPE_18__ {scalar_t__ e_phoff; } ;
struct TYPE_17__ {size_t e_phoff; } ;
struct TYPE_16__ {unsigned char* d_buf; size_t d_size; int /*<<< orphan*/  d_type; int /*<<< orphan*/  d_version; } ;
typedef  TYPE_3__ Elf_Data ;
typedef  TYPE_4__ Elf64_Ehdr ;
typedef  TYPE_5__ Elf32_Ehdr ;
typedef  TYPE_6__ Elf ;

/* Variables and functions */
 int ELFCLASS32 ; 
 scalar_t__ ELF_EXTENT_PHDR ; 
 int /*<<< orphan*/  ELF_TOFILE ; 
 int /*<<< orphan*/  ELF_T_PHDR ; 
 void* FUNC0 (TYPE_6__*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_6__*) ; 
 size_t FUNC2 (int /*<<< orphan*/ ,int) ; 
 size_t FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,size_t) ; 
 unsigned char* FUNC4 (TYPE_6__*,int) ; 
 size_t FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_3__*,TYPE_3__*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static off_t
FUNC9(Elf *e, unsigned char *nf, struct _Elf_Extent *ex)
{
	int ec, em;
	void *ehdr;
	Elf32_Ehdr *eh32;
	Elf64_Ehdr *eh64;
	Elf_Data dst, src;
	size_t fsz, phnum;
	uint64_t phoff;

	FUNC7(ex->ex_type == ELF_EXTENT_PHDR);

	ec = e->e_class;
	ehdr = FUNC0(e, ec, 0);
	phnum = e->e_u.e_elf.e_nphdr;

	FUNC7(phnum > 0);

	if (ec == ELFCLASS32) {
		eh32 = (Elf32_Ehdr *) ehdr;
		phoff = (uint64_t) eh32->e_phoff;
	} else {
		eh64 = (Elf64_Ehdr *) ehdr;
		phoff = eh64->e_phoff;
	}

	em = FUNC1(e);

	FUNC7(phoff > 0);
	FUNC7(ex->ex_start == phoff);
	FUNC7(phoff % FUNC2(ELF_T_PHDR, ec) == 0);

	(void) FUNC8(&dst, 0, sizeof(dst));
	(void) FUNC8(&src, 0, sizeof(src));

	fsz = FUNC3(ELF_T_PHDR, ec, e->e_version, phnum);
	FUNC7(fsz > 0);

	src.d_buf = FUNC4(e, ec);
	src.d_version = dst.d_version = e->e_version;
	src.d_type = ELF_T_PHDR;
	src.d_size = phnum * FUNC5(ELF_T_PHDR, ec,
	    e->e_version);

	dst.d_size = fsz;
	dst.d_buf = nf + ex->ex_start;

	if (FUNC6(&dst, &src, e->e_byteorder, ec, em, ELF_TOFILE) ==
	    NULL)
		return ((off_t) -1);

	return ((off_t) (phoff + fsz));
}