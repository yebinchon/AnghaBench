#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* variable ;
typedef  scalar_t__ htab_t ;
typedef  int /*<<< orphan*/  hashval_t ;
struct TYPE_4__ {scalar_t__ n_var_parts; int refcount; int /*<<< orphan*/  decl; } ;

/* Variables and functions */
 int /*<<< orphan*/  INSERT ; 
 int /*<<< orphan*/  NO_INSERT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ changed_variables ; 
 scalar_t__ emit_notes ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,void**) ; 
 void** FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  var_pool ; 

__attribute__((used)) static void
FUNC5 (variable var, htab_t htab)
{
  hashval_t hash = FUNC0 (var->decl);

  if (emit_notes)
    {
      variable *slot;

      slot = (variable *) FUNC3 (changed_variables,
						    var->decl, hash, INSERT);

      if (htab && var->n_var_parts == 0)
	{
	  variable empty_var;
	  void **old;

	  empty_var = FUNC4 (var_pool);
	  empty_var->decl = var->decl;
	  empty_var->refcount = 1;
	  empty_var->n_var_parts = 0;
	  *slot = empty_var;

	  old = FUNC3 (htab, var->decl, hash,
					  NO_INSERT);
	  if (old)
	    FUNC2 (htab, old);
	}
      else
	{
	  *slot = var;
	}
    }
  else
    {
      FUNC1 (htab);
      if (var->n_var_parts == 0)
	{
	  void **slot = FUNC3 (htab, var->decl, hash,
						  NO_INSERT);
	  if (slot)
	    FUNC2 (htab, slot);
	}
    }
}