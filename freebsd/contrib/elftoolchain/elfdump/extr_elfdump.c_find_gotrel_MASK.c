#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct section {scalar_t__ type; scalar_t__ sz; scalar_t__ addr; int entsize; int /*<<< orphan*/  link; int /*<<< orphan*/  scn; } ;
struct TYPE_10__ {scalar_t__ r_offset; int /*<<< orphan*/  r_info; } ;
struct TYPE_8__ {TYPE_4__ rel; int /*<<< orphan*/  rela; } ;
struct rel_entry {scalar_t__ type; TYPE_1__ u_r; int /*<<< orphan*/  symn; } ;
struct elfdump {size_t shnum; struct section* sl; } ;
struct TYPE_9__ {scalar_t__ d_size; } ;
typedef  TYPE_2__ Elf_Data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SHT_REL ; 
 scalar_t__ SHT_RELA ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 () ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC5 (TYPE_2__*,int,TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_2__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct section*,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct elfdump*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct rel_entry*,struct rel_entry*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct rel_entry*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(struct elfdump *ed, struct section *gs, struct rel_entry *got)
{
	struct section		*s;
	struct rel_entry	 r;
	Elf_Data		*data;
	size_t			 i;
	int			 elferr, j, k, len;

	for(i = 0; i < ed->shnum; i++) {
		s = &ed->sl[i];
		if (s->type != SHT_REL && s->type != SHT_RELA)
			continue;
		(void) FUNC3();
		if ((data = FUNC4(s->scn, NULL)) == NULL) {
			elferr = FUNC3();
			if (elferr != 0)
				FUNC11("elf_getdata failed: %s",
				    FUNC2(elferr));
			return;
		}
		FUNC10(&r, 0, sizeof(struct rel_entry));
		r.type = s->type;
		FUNC1(data->d_size == s->sz);
		if (!FUNC7(s, &len))
			return;
		for (j = 0; j < len; j++) {
			if (s->type == SHT_REL) {
				if (FUNC5(data, j, &r.u_r.rel) !=
				    &r.u_r.rel) {
					FUNC11("gelf_getrel failed: %s",
					    FUNC2(-1));
					continue;
				}
			} else {
				if (FUNC6(data, j, &r.u_r.rela) !=
				    &r.u_r.rela) {
					FUNC11("gelf_getrel failed: %s",
					    FUNC2(-1));
					continue;
				}
			}
			if (r.u_r.rel.r_offset >= gs->addr &&
			    r.u_r.rel.r_offset < gs->addr + gs->sz) {
				r.symn = FUNC8(ed, s->link,
				    FUNC0(r.u_r.rel.r_info));
				k = (r.u_r.rel.r_offset - gs->addr) /
				    gs->entsize;
				FUNC9(&got[k], &r, sizeof(struct rel_entry));
			}
		}
	}
}