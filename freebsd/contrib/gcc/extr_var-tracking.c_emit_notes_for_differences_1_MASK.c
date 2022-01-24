#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* variable ;
typedef  int /*<<< orphan*/  htab_t ;
struct TYPE_7__ {int refcount; scalar_t__ n_var_parts; int /*<<< orphan*/  decl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  var_pool ; 
 scalar_t__ FUNC3 (TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5 (void **slot, void *data)
{
  htab_t new_vars = (htab_t) data;
  variable old_var, new_var;

  old_var = *(variable *) slot;
  new_var = FUNC1 (new_vars, old_var->decl,
				 FUNC0 (old_var->decl));

  if (!new_var)
    {
      /* Variable has disappeared.  */
      variable empty_var;

      empty_var = FUNC2 (var_pool);
      empty_var->decl = old_var->decl;
      empty_var->refcount = 1;
      empty_var->n_var_parts = 0;
      FUNC4 (empty_var, NULL);
    }
  else if (FUNC3 (old_var, new_var, true))
    {
      FUNC4 (new_var, NULL);
    }

  /* Continue traversing the hash table.  */
  return 1;
}