#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct var_info_head {int dummy; } ;
struct sym_print_data {char* filename; char* objname; int sh_num; char** s_table; int /*<<< orphan*/  t_table; } ;
struct sym_entry {int /*<<< orphan*/ * name; TYPE_1__* sym; } ;
struct line_info_head {int dummy; } ;
struct func_info_head {int dummy; } ;
struct TYPE_6__ {scalar_t__ print_name; int debug_line; int /*<<< orphan*/  (* elem_print_fn ) (char,char const*,TYPE_1__*,int /*<<< orphan*/ *) ;} ;
struct TYPE_5__ {int st_shndx; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sym_print_data*) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 scalar_t__ PRINT_NAME_FULL ; 
#define  SHN_ABS 134 
#define  SHN_COMMON 133 
#define  SHN_HIOS 132 
#define  SHN_HIPROC 131 
#define  SHN_HIRESERVE 130 
#define  SHN_LOOS 129 
#define  SHN_LOPROC 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_3__ nm_opts ; 
 int /*<<< orphan*/  FUNC4 (struct sym_entry*,struct func_info_head*,struct var_info_head*,struct line_info_head*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char,char const*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char,char const*,TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(struct sym_entry *ep, struct sym_print_data *p,
    struct func_info_head *func_info, struct var_info_head *var_info,
    struct line_info_head *line_info)
{
	const char *sec;
	char type;

	if (ep == NULL || FUNC0(p))
		return;

	FUNC2(ep->name != NULL);
	FUNC2(ep->sym != NULL);

	type = FUNC3(ep->sym, p->t_table);

	if (nm_opts.print_name == PRINT_NAME_FULL) {
		FUNC5("%s", p->filename);
		if (nm_opts.elem_print_fn == &sym_elem_print_all_portable) {
			if (p->objname != NULL)
				FUNC5("[%s]", p->objname);
			FUNC5(": ");
		} else {
			if (p->objname != NULL)
				FUNC5(":%s", p->objname);
			FUNC5(":");
		}
	}

	switch (ep->sym->st_shndx) {
	case SHN_LOPROC:
		/* LOPROC or LORESERVE */
		sec = "*LOPROC*";
		break;
	case SHN_HIPROC:
		sec = "*HIPROC*";
		break;
	case SHN_LOOS:
		sec = "*LOOS*";
		break;
	case SHN_HIOS:
		sec = "*HIOS*";
		break;
	case SHN_ABS:
		sec = "*ABS*";
		break;
	case SHN_COMMON:
		sec = "*COM*";
		break;
	case SHN_HIRESERVE:
		/* HIRESERVE or XINDEX */
		sec = "*HIRESERVE*";
		break;
	default:
		if (ep->sym->st_shndx > p->sh_num)
			return;
		sec = p->s_table[ep->sym->st_shndx];
		break;
	}

	nm_opts.elem_print_fn(type, sec, ep->sym, ep->name);

	if (nm_opts.debug_line == true && !FUNC1(type))
		FUNC4(ep, func_info, var_info, line_info);

	FUNC5("\n");
}