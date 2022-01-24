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
typedef  int /*<<< orphan*/  htab_t ;
struct TYPE_4__ {int /*<<< orphan*/  decl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3 (void **slot, void *data)
{
  htab_t old_vars = (htab_t) data;
  variable old_var, new_var;

  new_var = *(variable *) slot;
  old_var = FUNC1 (old_vars, new_var->decl,
				 FUNC0 (new_var->decl));
  if (!old_var)
    {
      /* Variable has appeared.  */
      FUNC2 (new_var, NULL);
    }

  /* Continue traversing the hash table.  */
  return 1;
}