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
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
struct section {char* name; int /*<<< orphan*/  scn; } ;
struct readelf {int (* dw_decode ) (int**,int) ;} ;
struct TYPE_3__ {scalar_t__ d_size; int* d_buf; } ;
typedef  TYPE_1__ Elf_Data ;

/* Variables and functions */
#define  ODK_EXCEPTIONS 138 
#define  ODK_FILL 137 
#define  ODK_GP_GROUP 136 
#define  ODK_HWAND 135 
#define  ODK_HWOR 134 
#define  ODK_HWPATCH 133 
#define  ODK_IDENT 132 
#define  ODK_PAD 131 
#define  ODK_PAGESIZE 130 
#define  ODK_REGINFO 129 
#define  ODK_TAGS 128 
 int OEX_FPU_MAX ; 
 int OEX_FPU_MIN ; 
 int /*<<< orphan*/  FUNC0 (struct readelf*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 () ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mips_exceptions_option ; 
 int /*<<< orphan*/  mips_hwa_option ; 
 int /*<<< orphan*/  mips_hwo_option ; 
 int /*<<< orphan*/  mips_hwpatch_option ; 
 int /*<<< orphan*/  mips_pad_option ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int FUNC6 (int**,int) ; 
 int FUNC7 (int**,int) ; 
 int FUNC8 (int**,int) ; 
 int FUNC9 (int**,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 

__attribute__((used)) static void
FUNC11(struct readelf *re, struct section *s)
{
	Elf_Data *d;
	uint32_t info;
	uint16_t sndx;
	uint8_t *p, *pe;
	uint8_t kind, size;
	int elferr;

	(void) FUNC3();
	if ((d = FUNC4(s->scn, NULL)) == NULL) {
		elferr = FUNC3();
		if (elferr != 0)
			FUNC10("elf_rawdata failed: %s",
			    FUNC2(elferr));
		return;
	}
	if (d->d_size == 0)
		return;

	FUNC5("\nSection %s contains:\n", s->name);
	p = d->d_buf;
	pe = p + d->d_size;
	while (p < pe) {
		if (pe - p < 8) {
			FUNC10("Truncated MIPS option header");
			return;
		}
		kind = re->dw_decode(&p, 1);
		size = re->dw_decode(&p, 1);
		sndx = re->dw_decode(&p, 2);
		info = re->dw_decode(&p, 4);
		if (size < 8 || size - 8 > pe - p) {
			FUNC10("Malformed MIPS option header");
			return;
		}
		size -= 8;
		switch (kind) {
		case ODK_REGINFO:
			FUNC0(re, p, size);
			break;
		case ODK_EXCEPTIONS:
			FUNC5(" EXCEPTIONS FPU_MIN: %#x\n",
			    info & OEX_FPU_MIN);
			FUNC5("%11.11s FPU_MAX: %#x\n", "",
			    info & OEX_FPU_MAX);
			FUNC1("", mips_exceptions_option,
			    info);
			break;
		case ODK_PAD:
			FUNC5(" %-10.10s section: %ju\n", "OPAD",
			    (uintmax_t) sndx);
			FUNC1("", mips_pad_option, info);
			break;
		case ODK_HWPATCH:
			FUNC1("HWPATCH", mips_hwpatch_option,
			    info);
			break;
		case ODK_HWAND:
			FUNC1("HWAND", mips_hwa_option, info);
			break;
		case ODK_HWOR:
			FUNC1("HWOR", mips_hwo_option, info);
			break;
		case ODK_FILL:
			FUNC5(" %-10.10s %#jx\n", "FILL", (uintmax_t) info);
			break;
		case ODK_TAGS:
			FUNC5(" %-10.10s\n", "TAGS");
			break;
		case ODK_GP_GROUP:
			FUNC5(" %-10.10s GP group number: %#x\n", "GP_GROUP",
			    info & 0xFFFF);
			if (info & 0x10000)
				FUNC5(" %-10.10s GP group is "
				    "self-contained\n", "");
			break;
		case ODK_IDENT:
			FUNC5(" %-10.10s default GP group number: %#x\n",
			    "IDENT", info & 0xFFFF);
			if (info & 0x10000)
				FUNC5(" %-10.10s default GP group is "
				    "self-contained\n", "");
			break;
		case ODK_PAGESIZE:
			FUNC5(" %-10.10s\n", "PAGESIZE");
			break;
		default:
			break;
		}
		p += size;
	}
}