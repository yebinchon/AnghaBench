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
typedef  size_t uint32_t ;
struct section {scalar_t__ type; size_t link; int entsize; size_t sz; char* name; int /*<<< orphan*/  info; int /*<<< orphan*/  scn; } ;
struct readelf {size_t shnum; struct section* sl; } ;
struct TYPE_3__ {scalar_t__ d_size; size_t* d_buf; } ;
typedef  TYPE_1__ Elf_Data ;

/* Variables and functions */
 int GRP_COMDAT ; 
 scalar_t__ SHT_GROUP ; 
 size_t FUNC0 (int) ; 
 int FUNC1 () ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC3 (struct readelf*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,size_t) ; 

__attribute__((used)) static void
FUNC6(struct readelf *re)
{
	struct section *s;
	const char *symname;
	Elf_Data *d;
	uint32_t *w;
	int i, j, elferr;
	size_t n;

	for (i = 0; (size_t) i < re->shnum; i++) {
		s = &re->sl[i];
		if (s->type != SHT_GROUP)
			continue;
		if (s->link >= re->shnum)
			continue;
		(void) FUNC1();
		if ((d = FUNC2(s->scn, NULL)) == NULL) {
			elferr = FUNC1();
			if (elferr != 0)
				FUNC5("elf_getdata failed: %s",
				    FUNC0(elferr));
			continue;
		}
		if (d->d_size <= 0)
			continue;

		w = d->d_buf;

		/* We only support COMDAT section. */
#ifndef GRP_COMDAT
#define	GRP_COMDAT 0x1
#endif
		if ((*w++ & GRP_COMDAT) == 0)
			return;

		if (s->entsize == 0)
			s->entsize = 4;

		symname = FUNC3(re, s->link, s->info);
		n = s->sz / s->entsize;
		if (n-- < 1)
			return;

		FUNC4("\nCOMDAT group section [%5d] `%s' [%s] contains %ju"
		    " sections:\n", i, s->name, symname, (uintmax_t)n);
		FUNC4("   %-10.10s %s\n", "[Index]", "Name");
		for (j = 0; (size_t) j < n; j++, w++) {
			if (*w >= re->shnum) {
				FUNC5("invalid section index: %u", *w);
				continue;
			}
			FUNC4("   [%5u]   %s\n", *w, re->sl[*w].name);
		}
	}
}