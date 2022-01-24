#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct segment {int /*<<< orphan*/  type; int /*<<< orphan*/  msz; int /*<<< orphan*/  fsz; int /*<<< orphan*/  off; int /*<<< orphan*/  paddr; int /*<<< orphan*/  vaddr; } ;
struct elfcopy {size_t ophnum; size_t iphnum; scalar_t__ strip; int /*<<< orphan*/  v_seg; int /*<<< orphan*/  ein; } ;
struct TYPE_4__ {int /*<<< orphan*/  p_type; int /*<<< orphan*/  p_memsz; int /*<<< orphan*/  p_filesz; int /*<<< orphan*/  p_offset; int /*<<< orphan*/  p_paddr; int /*<<< orphan*/  p_vaddr; } ;
typedef  TYPE_1__ GElf_Phdr ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct segment*,int /*<<< orphan*/ ) ; 
 scalar_t__ STRIP_NONDEBUG ; 
 struct segment* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ,size_t,TYPE_1__*) ; 
 int /*<<< orphan*/  seg_list ; 

void
FUNC7(struct elfcopy *ecp)
{
	struct segment	*seg;
	GElf_Phdr	 iphdr;
	size_t		 iphnum, i;

	if (FUNC3(ecp->ein, &iphnum) == 0)
		FUNC5(EXIT_FAILURE, "elf_getphnum failed: %s",
		    FUNC2(-1));

	ecp->ophnum = ecp->iphnum = iphnum;
	if (iphnum == 0)
		return;

	/* If --only-keep-debug is specified, discard all program headers. */
	if (ecp->strip == STRIP_NONDEBUG) {
		ecp->ophnum = 0;
		return;
	}

	for (i = 0; i < iphnum; i++) {
		if (FUNC6(ecp->ein, i, &iphdr) != &iphdr)
			FUNC5(EXIT_FAILURE, "gelf_getphdr failed: %s",
			    FUNC2(-1));
		if ((seg = FUNC1(1, sizeof(*seg))) == NULL)
			FUNC4(EXIT_FAILURE, "calloc failed");
		seg->vaddr	= iphdr.p_vaddr;
		seg->paddr	= iphdr.p_paddr;
		seg->off	= iphdr.p_offset;
		seg->fsz	= iphdr.p_filesz;
		seg->msz	= iphdr.p_memsz;
		seg->type	= iphdr.p_type;
		FUNC0(&ecp->v_seg, seg, seg_list);
	}
}