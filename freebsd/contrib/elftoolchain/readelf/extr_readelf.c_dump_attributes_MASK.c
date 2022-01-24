#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  char* uintmax_t ;
typedef  char uint8_t ;
typedef  scalar_t__ uint64_t ;
struct section {scalar_t__ type; int /*<<< orphan*/  scn; } ;
struct TYPE_4__ {scalar_t__ e_machine; } ;
struct readelf {size_t shnum; size_t (* dw_decode ) (char**,int) ;TYPE_1__ ehdr; struct section* sl; } ;
struct TYPE_5__ {int d_size; char* d_buf; } ;
typedef  TYPE_2__ Elf_Data ;

/* Variables and functions */
 scalar_t__ EM_ARM ; 
 scalar_t__ EM_MIPS ; 
 scalar_t__ EM_MIPS_RS3_LE ; 
 scalar_t__ EM_PPC ; 
 scalar_t__ SHT_GNU_ATTRIBUTES ; 
 scalar_t__ SHT_LOPROC ; 
 scalar_t__ FUNC0 (char**,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct readelf*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct readelf*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 () ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char) ; 
 int FUNC9 (char*) ; 
 size_t FUNC10 (char**,int) ; 
 size_t FUNC11 (char**,int) ; 
 char* FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 

__attribute__((used)) static void
FUNC14(struct readelf *re)
{
	struct section *s;
	Elf_Data *d;
	uint8_t *p, *pe, *sp;
	size_t len, seclen, nlen, sublen;
	uint64_t val;
	int tag, i, elferr;

	for (i = 0; (size_t) i < re->shnum; i++) {
		s = &re->sl[i];
		if (s->type != SHT_GNU_ATTRIBUTES &&
		    (re->ehdr.e_machine != EM_ARM || s->type != SHT_LOPROC + 3))
			continue;
		(void) FUNC5();
		if ((d = FUNC6(s->scn, NULL)) == NULL) {
			elferr = FUNC5();
			if (elferr != 0)
				FUNC13("elf_rawdata failed: %s",
				    FUNC4(elferr));
			continue;
		}
		if (d->d_size <= 0)
			continue;
		p = d->d_buf;
		pe = p + d->d_size;
		if (*p != 'A') {
			FUNC7("Unknown Attribute Section Format: %c\n",
			    (char) *p);
			continue;
		}
		len = d->d_size - 1;
		p++;
		while (len > 0) {
			if (len < 4) {
				FUNC13("truncated attribute section length");
				return;
			}
			seclen = re->dw_decode(&p, 4);
			if (seclen > len) {
				FUNC13("invalid attribute section length");
				return;
			}
			len -= seclen;
			nlen = FUNC9((char *) p) + 1;
			if (nlen + 4 > seclen) {
				FUNC13("invalid attribute section name");
				return;
			}
			FUNC7("Attribute Section: %s\n", (char *) p);
			p += nlen;
			seclen -= nlen + 4;
			while (seclen > 0) {
				sp = p;
				tag = *p++;
				sublen = re->dw_decode(&p, 4);
				if (sublen > seclen) {
					FUNC13("invalid attribute sub-section"
					    " length");
					return;
				}
				seclen -= sublen;
				FUNC7("%s", FUNC12(tag));
				if (tag == 2 || tag == 3) {
					FUNC8(':');
					for (;;) {
						val = FUNC0(&p, pe);
						if (val == 0)
							break;
						FUNC7(" %ju", (uintmax_t) val);
					}
				}
				FUNC8('\n');
				if (re->ehdr.e_machine == EM_ARM &&
				    s->type == SHT_LOPROC + 3)
					FUNC1(re, p, sp + sublen);
				else if (re->ehdr.e_machine == EM_MIPS ||
				    re->ehdr.e_machine == EM_MIPS_RS3_LE)
					FUNC2(re, p,
					    sp + sublen);
				else if (re->ehdr.e_machine == EM_PPC)
					FUNC3(p, sp + sublen);
				p = sp + sublen;
			}
		}
	}
}