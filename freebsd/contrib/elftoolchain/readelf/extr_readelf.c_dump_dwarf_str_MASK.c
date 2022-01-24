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
struct section {int /*<<< orphan*/  scn; int /*<<< orphan*/ * name; } ;
struct readelf {size_t shnum; struct section* sl; } ;
struct TYPE_3__ {size_t d_size; unsigned char* d_buf; } ;
typedef  TYPE_1__ Elf_Data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 () ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (unsigned char) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct readelf *re)
{
	struct section *s;
	Elf_Data *d;
	unsigned char *p;
	int elferr, end, i, j;

	FUNC4("\nContents of section .debug_str:\n");

	s = NULL;
	for (i = 0; (size_t) i < re->shnum; i++) {
		s = &re->sl[i];
		if (s->name != NULL && !FUNC6(s->name, ".debug_str"))
			break;
	}
	if ((size_t) i >= re->shnum)
		return;

	(void) FUNC1();
	if ((d = FUNC2(s->scn, NULL)) == NULL) {
		elferr = FUNC1();
		if (elferr != 0)
			FUNC7("elf_getdata failed: %s", FUNC0(-1));
		return;
	}
	if (d->d_size <= 0)
		return;

	for (i = 0, p = d->d_buf; (size_t) i < d->d_size; i += 16) {
		FUNC4("  0x%08x", (unsigned int) i);
		if ((size_t) i + 16 > d->d_size)
			end = d->d_size;
		else
			end = i + 16;
		for (j = i; j < i + 16; j++) {
			if ((j - i) % 4 == 0)
				FUNC5(' ');
			if (j >= end) {
				FUNC4("  ");
				continue;
			}
			FUNC4("%02x", (uint8_t) p[j]);
		}
		FUNC5(' ');
		for (j = i; j < end; j++) {
			if (FUNC3(p[j]))
				FUNC5(p[j]);
			else if (p[j] == 0)
				FUNC5('.');
			else
				FUNC5(' ');
		}
		FUNC5('\n');
	}
}