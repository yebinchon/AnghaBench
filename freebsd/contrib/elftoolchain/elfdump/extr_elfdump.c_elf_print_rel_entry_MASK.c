#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uintmax_t ;
struct section {int name; } ;
struct TYPE_7__ {scalar_t__ r_addend; } ;
struct TYPE_6__ {scalar_t__ r_info; scalar_t__ r_offset; } ;
struct TYPE_8__ {TYPE_3__ rela; TYPE_2__ rel; } ;
struct rel_entry {scalar_t__ type; int symn; TYPE_4__ u_r; } ;
struct TYPE_5__ {int /*<<< orphan*/  e_machine; } ;
struct elfdump {int flags; scalar_t__ ec; TYPE_1__ ehdr; } ;
typedef  int intmax_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ ELFCLASS32 ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 scalar_t__ SHT_RELA ; 
 int SOLARIS_FMT ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct elfdump *ed, struct section *s, int j,
    struct rel_entry *r)
{

	if (ed->flags & SOLARIS_FMT) {
		FUNC4("        %-23s ", FUNC5(ed->ehdr.e_machine,
			FUNC3(r->u_r.rel.r_info)));
		FUNC4("%#12jx ", (uintmax_t)r->u_r.rel.r_offset);
		if (r->type == SHT_RELA)
			FUNC4("%10jd  ", (intmax_t)r->u_r.rela.r_addend);
		else
			FUNC4("    ");
		FUNC4("%-14s ", s->name);
		FUNC4("%s\n", r->symn);
	} else {
		FUNC4("\n");
		FUNC4("entry: %d\n", j);
		FUNC4("\tr_offset: %#jx\n", (uintmax_t)r->u_r.rel.r_offset);
		if (ed->ec == ELFCLASS32)
			FUNC4("\tr_info: %#jx\n", (uintmax_t)
			    FUNC0(FUNC1(r->u_r.rel.r_info),
			    FUNC2(r->u_r.rel.r_info)));
		else
			FUNC4("\tr_info: %#jx\n", (uintmax_t)r->u_r.rel.r_info);
		if (r->type == SHT_RELA)
			FUNC4("\tr_addend: %jd\n",
			    (intmax_t)r->u_r.rela.r_addend);
	}
}