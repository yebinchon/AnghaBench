#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct section {scalar_t__ type; int /*<<< orphan*/  scn; } ;
struct readelf {size_t shnum; struct section* sl; } ;
typedef  int /*<<< orphan*/  Elf_Data ;

/* Variables and functions */
 scalar_t__ SHT_REL ; 
 scalar_t__ SHT_RELA ; 
 int /*<<< orphan*/  FUNC0 (struct readelf*,struct section*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct readelf*,struct section*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct readelf *re)
{
	struct section *s;
	Elf_Data *d;
	int i, elferr;

	for (i = 0; (size_t)i < re->shnum; i++) {
		s = &re->sl[i];
		if (s->type == SHT_REL || s->type == SHT_RELA) {
			(void) FUNC3();
			if ((d = FUNC4(s->scn, NULL)) == NULL) {
				elferr = FUNC3();
				if (elferr != 0)
					FUNC5("elf_getdata failed: %s",
					    FUNC2(elferr));
				continue;
			}
			if (s->type == SHT_REL)
				FUNC0(re, s, d);
			else
				FUNC1(re, s, d);
		}
	}
}