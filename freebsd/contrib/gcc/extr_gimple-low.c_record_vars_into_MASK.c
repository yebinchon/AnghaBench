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
typedef  scalar_t__ tree ;
struct function {int /*<<< orphan*/  unexpanded_var_list; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 struct function* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  NULL_TREE ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ VAR_DECL ; 
 struct function* cfun ; 
 scalar_t__ current_function_decl ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

void
FUNC5 (tree vars, tree fn)
{
  struct function *saved_cfun = cfun;

  if (fn != current_function_decl)
    cfun = FUNC1 (fn);

  for (; vars; vars = FUNC2 (vars))
    {
      tree var = vars;

      /* BIND_EXPRs contains also function/type/constant declarations
         we don't need to care about.  */
      if (FUNC3 (var) != VAR_DECL)
	continue;

      /* Nothing to do in this case.  */
      if (FUNC0 (var))
	continue;

      /* Record the variable.  */
      cfun->unexpanded_var_list = FUNC4 (NULL_TREE, var,
					     cfun->unexpanded_var_list);
    }

  if (fn != current_function_decl)
    cfun = saved_cfun;
}