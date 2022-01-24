#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct section {scalar_t__ sz; int /*<<< orphan*/  link; int /*<<< orphan*/  name; } ;
struct TYPE_9__ {int /*<<< orphan*/  r_info; } ;
struct TYPE_7__ {TYPE_3__ rela; } ;
struct rel_entry {TYPE_1__ u_r; int /*<<< orphan*/  symn; int /*<<< orphan*/  type; } ;
struct elfdump {int flags; } ;
struct TYPE_8__ {scalar_t__ d_size; } ;
typedef  TYPE_2__ Elf_Data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  SHT_RELA ; 
 int SOLARIS_FMT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct elfdump*,struct section*,int,struct rel_entry*) ; 
 TYPE_3__* FUNC5 (TYPE_2__*,int,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (struct section*,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct elfdump*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(struct elfdump *ed, struct section *s, Elf_Data *data)
{
	struct rel_entry	r;
	int			j, len;

	if (ed->flags & SOLARIS_FMT) {
		FUNC1("\nRelocation Section:  %s\n", s->name);
		FUNC1("        type                          offset     "
		    "addend  section        with respect to\n");
	} else
		FUNC1("\nrelocation with addend (%s):\n", s->name);
	r.type = SHT_RELA;
	FUNC2(data->d_size == s->sz);
	if (!FUNC6(s, &len))
		return;
	for (j = 0; j < len; j++) {
		if (FUNC5(data, j, &r.u_r.rela) != &r.u_r.rela) {
			FUNC8("gelf_getrela failed: %s",
			    FUNC3(-1));
			continue;
		}
		r.symn = FUNC7(ed, s->link,
		    FUNC0(r.u_r.rela.r_info));
		FUNC4(ed, s, j, &r);
	}
}