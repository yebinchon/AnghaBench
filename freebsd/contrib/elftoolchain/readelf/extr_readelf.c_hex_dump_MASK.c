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
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int uint8_t ;
typedef  scalar_t__ uint64_t ;
struct section {char* name; scalar_t__ addr; int /*<<< orphan*/  scn; } ;
struct readelf {size_t shnum; struct section* sl; } ;
struct TYPE_4__ {size_t d_size; int* d_buf; } ;
typedef  TYPE_1__ Elf_Data ;

/* Variables and functions */
 int /*<<< orphan*/  HEX_DUMP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 () ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (struct readelf*,size_t,char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct readelf *re)
{
	struct section *s;
	Elf_Data *d;
	uint8_t *buf;
	size_t sz, nbytes;
	uint64_t addr;
	int elferr, i, j;

	for (i = 1; (size_t) i < re->shnum; i++) {
		s = &re->sl[i];
		if (FUNC4(re, (size_t) i, s->name, HEX_DUMP, -1) == NULL)
			continue;
		(void) FUNC1();
		if ((d = FUNC2(s->scn, NULL)) == NULL &&
		    (d = FUNC3(s->scn, NULL)) == NULL) {
			elferr = FUNC1();
			if (elferr != 0)
				FUNC7("elf_getdata failed: %s",
				    FUNC0(elferr));
			continue;
		}
		(void) FUNC1();
		if (d->d_size <= 0 || d->d_buf == NULL) {
			FUNC6("\nSection '%s' has no data to dump.\n",
			    s->name);
			continue;
		}
		buf = d->d_buf;
		sz = d->d_size;
		addr = s->addr;
		FUNC6("\nHex dump of section '%s':\n", s->name);
		while (sz > 0) {
			FUNC6("  0x%8.8jx ", (uintmax_t)addr);
			nbytes = sz > 16? 16 : sz;
			for (j = 0; j < 16; j++) {
				if ((size_t)j < nbytes)
					FUNC6("%2.2x", buf[j]);
				else
					FUNC6("  ");
				if ((j & 3) == 3)
					FUNC6(" ");
			}
			for (j = 0; (size_t)j < nbytes; j++) {
				if (FUNC5(buf[j]))
					FUNC6("%c", buf[j]);
				else
					FUNC6(".");
			}
			FUNC6("\n");
			buf += nbytes;
			addr += nbytes;
			sz -= nbytes;
		}
	}
}