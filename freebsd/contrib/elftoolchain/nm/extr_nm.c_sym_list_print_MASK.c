#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct var_info_head {int dummy; } ;
struct sym_print_data {size_t list_num; } ;
struct sym_entry {int dummy; } ;
struct line_info_head {int dummy; } ;
struct func_info_head {int dummy; } ;
struct TYPE_2__ {int sort_reverse; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sym_print_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct sym_entry*) ; 
 TYPE_1__ nm_opts ; 
 int /*<<< orphan*/  FUNC2 (struct sym_entry*,struct sym_print_data*,struct func_info_head*,struct var_info_head*,struct line_info_head*) ; 
 struct sym_entry* FUNC3 (struct sym_print_data*) ; 

__attribute__((used)) static void
FUNC4(struct sym_print_data *p, struct func_info_head *func_info,
    struct var_info_head *var_info, struct line_info_head *line_info)
{
	struct sym_entry *e_v;
	size_t si;
	int i;

	if (p == NULL || FUNC0(p))
		return;
	if ((e_v = FUNC3(p)) == NULL)
		return;
	if (nm_opts.sort_reverse == false)
		for (si = 0; si != p->list_num; ++si)
			FUNC2(&e_v[si], p, func_info, var_info,
			    line_info);
	else
		for (i = p->list_num - 1; i != -1; --i)
			FUNC2(&e_v[i], p, func_info, var_info,
			    line_info);

	FUNC1(e_v);
}