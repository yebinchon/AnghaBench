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
struct section {scalar_t__ type; int /*<<< orphan*/  scn; } ;
struct readelf {size_t shnum; int vs_sz; int /*<<< orphan*/  vs; struct section* vs_s; int /*<<< orphan*/ * ver; struct section* vn_s; struct section* vd_s; struct section* sl; } ;
struct TYPE_3__ {int d_size; int /*<<< orphan*/  d_buf; } ;
typedef  TYPE_1__ Elf_Data ;
typedef  int /*<<< orphan*/  Elf32_Half ;

/* Variables and functions */
 scalar_t__ SHT_SUNW_verdef ; 
 scalar_t__ SHT_SUNW_verneed ; 
 scalar_t__ SHT_SUNW_versym ; 
 int /*<<< orphan*/  FUNC0 (struct readelf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct readelf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 () ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct readelf *re)
{
	struct section *s;
	Elf_Data *d;
	int elferr, i;

	for (i = 0; (size_t) i < re->shnum; i++) {
		s = &re->sl[i];
		if (s->type == SHT_SUNW_versym)
			re->vs_s = s;
		if (s->type == SHT_SUNW_verneed)
			re->vn_s = s;
		if (s->type == SHT_SUNW_verdef)
			re->vd_s = s;
	}
	if (re->vd_s)
		FUNC0(re, 0);
	if (re->vn_s)
		FUNC1(re, 0);
	if (re->vs_s && re->ver != NULL) {
		(void) FUNC3();
		if ((d = FUNC4(re->vs_s->scn, NULL)) == NULL) {
			elferr = FUNC3();
			if (elferr != 0)
				FUNC5("elf_getdata failed: %s",
				    FUNC2(elferr));
			return;
		}
		if (d->d_size == 0)
			return;
		re->vs = d->d_buf;
		re->vs_sz = d->d_size / sizeof(Elf32_Half);
	}
}