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
typedef  int /*<<< orphan*/  tree ;
struct var_ann_d {int dummy; } ;
struct tree_phi_node {int dummy; } ;
struct stmt_ann_d {int dummy; } ;
struct phi_arg_d {int dummy; } ;
struct dfa_stats_d {int num_stmt_anns; int num_var_anns; int num_uses; int num_defs; int num_vuses; int num_v_may_defs; int num_v_must_defs; int num_phis; int num_phi_args; int max_num_phi_args; } ;
struct TYPE_2__ {char* (* decl_printable_name ) (int /*<<< orphan*/ ,int) ;} ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct dfa_stats_d*) ; 
 int /*<<< orphan*/  current_function_decl ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const* const,...) ; 
 TYPE_1__ lang_hooks ; 
 int num_referenced_vars ; 
 char* FUNC4 (int /*<<< orphan*/ ,int) ; 

void
FUNC5 (FILE *file)
{
  struct dfa_stats_d dfa_stats;

  unsigned long size, total = 0;
  const char * const fmt_str   = "%-30s%-13s%12s\n";
  const char * const fmt_str_1 = "%-30s%13lu%11lu%c\n";
  const char * const fmt_str_3 = "%-43s%11d%c\n";
  const char *funcname
    = lang_hooks.decl_printable_name (current_function_decl, 2);

  FUNC2 (&dfa_stats);

  FUNC3 (file, "\nDFA Statistics for %s\n\n", funcname);

  FUNC3 (file, "---------------------------------------------------------\n");
  FUNC3 (file, fmt_str, "", "  Number of  ", "Memory");
  FUNC3 (file, fmt_str, "", "  instances  ", "used ");
  FUNC3 (file, "---------------------------------------------------------\n");

  size = num_referenced_vars * sizeof (tree);
  total += size;
  FUNC3 (file, fmt_str_1, "Referenced variables", (unsigned long)num_referenced_vars,
	   FUNC1 (size), FUNC0 (size));

  size = dfa_stats.num_stmt_anns * sizeof (struct stmt_ann_d);
  total += size;
  FUNC3 (file, fmt_str_1, "Statements annotated", dfa_stats.num_stmt_anns,
	   FUNC1 (size), FUNC0 (size));

  size = dfa_stats.num_var_anns * sizeof (struct var_ann_d);
  total += size;
  FUNC3 (file, fmt_str_1, "Variables annotated", dfa_stats.num_var_anns,
	   FUNC1 (size), FUNC0 (size));

  size = dfa_stats.num_uses * sizeof (tree *);
  total += size;
  FUNC3 (file, fmt_str_1, "USE operands", dfa_stats.num_uses,
	   FUNC1 (size), FUNC0 (size));

  size = dfa_stats.num_defs * sizeof (tree *);
  total += size;
  FUNC3 (file, fmt_str_1, "DEF operands", dfa_stats.num_defs,
	   FUNC1 (size), FUNC0 (size));

  size = dfa_stats.num_vuses * sizeof (tree *);
  total += size;
  FUNC3 (file, fmt_str_1, "VUSE operands", dfa_stats.num_vuses,
	   FUNC1 (size), FUNC0 (size));

  size = dfa_stats.num_v_may_defs * sizeof (tree *);
  total += size;
  FUNC3 (file, fmt_str_1, "V_MAY_DEF operands", dfa_stats.num_v_may_defs,
	   FUNC1 (size), FUNC0 (size));

  size = dfa_stats.num_v_must_defs * sizeof (tree *);
  total += size;
  FUNC3 (file, fmt_str_1, "V_MUST_DEF operands", dfa_stats.num_v_must_defs,
	   FUNC1 (size), FUNC0 (size));

  size = dfa_stats.num_phis * sizeof (struct tree_phi_node);
  total += size;
  FUNC3 (file, fmt_str_1, "PHI nodes", dfa_stats.num_phis,
	   FUNC1 (size), FUNC0 (size));

  size = dfa_stats.num_phi_args * sizeof (struct phi_arg_d);
  total += size;
  FUNC3 (file, fmt_str_1, "PHI arguments", dfa_stats.num_phi_args,
 	   FUNC1 (size), FUNC0 (size));

  FUNC3 (file, "---------------------------------------------------------\n");
  FUNC3 (file, fmt_str_3, "Total memory used by DFA/SSA data", FUNC1 (total),
	   FUNC0 (total));
  FUNC3 (file, "---------------------------------------------------------\n");
  FUNC3 (file, "\n");

  if (dfa_stats.num_phis)
    FUNC3 (file, "Average number of arguments per PHI node: %.1f (max: %d)\n",
	     (float) dfa_stats.num_phi_args / (float) dfa_stats.num_phis,
	     dfa_stats.max_num_phi_args);

  FUNC3 (file, "\n");
}