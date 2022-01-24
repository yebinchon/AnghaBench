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
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
struct section {int /*<<< orphan*/  scn; } ;
struct readelf {int (* dw_decode ) (int**,int) ;} ;
struct TYPE_3__ {int d_size; int* d_buf; } ;
typedef  TYPE_1__ Elf_Data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 () ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int FUNC5 (int**,int) ; 
 int FUNC6 (int**,int) ; 
 int FUNC7 (int**,int) ; 
 int FUNC8 (int**,int) ; 
 int FUNC9 (int**,int) ; 
 int FUNC10 (int**,int) ; 
 int FUNC11 (int**,int) ; 
 int FUNC12 (int**,int) ; 
 int FUNC13 (int**,int) ; 
 int FUNC14 (int**,int) ; 
 int FUNC15 (int**,int) ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 

__attribute__((used)) static void
FUNC17(struct readelf *re, struct section *s)
{
	Elf_Data *d;
	uint8_t *p;
	int elferr;
	uint32_t isa_ext, ases, flags1, flags2;
	uint16_t version;
	uint8_t isa_level, isa_rev, gpr_size, cpr1_size, cpr2_size, fp_abi;

	if ((d = FUNC2(s->scn, NULL)) == NULL) {
		elferr = FUNC1();
		if (elferr != 0)
			FUNC16("elf_rawdata failed: %s",
			    FUNC0(elferr));
		return;
	}
	if (d->d_size != 24) {
		FUNC16("invalid MIPS abiflags section size");
		return;
	}

	p = d->d_buf;
	version = re->dw_decode(&p, 2);
	FUNC4("MIPS ABI Flags Version: %u", version);
	if (version != 0) {
		FUNC4(" (unknown)\n\n");
		return;
	}
	FUNC4("\n\n");

	isa_level = re->dw_decode(&p, 1);
	isa_rev = re->dw_decode(&p, 1);
	gpr_size = re->dw_decode(&p, 1);
	cpr1_size = re->dw_decode(&p, 1);
	cpr2_size = re->dw_decode(&p, 1);
	fp_abi = re->dw_decode(&p, 1);
	isa_ext = re->dw_decode(&p, 4);
	ases = re->dw_decode(&p, 4);
	flags1 = re->dw_decode(&p, 4);
	flags2 = re->dw_decode(&p, 4);

	FUNC4("ISA: ");
	if (isa_rev <= 1)
		FUNC4("MIPS%u\n", isa_level);
	else
		FUNC4("MIPS%ur%u\n", isa_level, isa_rev);
	FUNC4("GPR size: %d\n", FUNC3(gpr_size));
	FUNC4("CPR1 size: %d\n", FUNC3(cpr1_size));
	FUNC4("CPR2 size: %d\n", FUNC3(cpr2_size));
	FUNC4("FP ABI: ");
	switch (fp_abi) {
	case 3:
		FUNC4("Soft float");
		break;
	default:
		FUNC4("%u", fp_abi);
		break;
	}
	FUNC4("\nISA Extension: %u\n", isa_ext);
	FUNC4("ASEs: %u\n", ases);
	FUNC4("FLAGS 1: %08x\n", flags1);
	FUNC4("FLAGS 2: %08x\n", flags2);
}