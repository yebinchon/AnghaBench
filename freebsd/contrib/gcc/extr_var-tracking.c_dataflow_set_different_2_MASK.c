#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* variable ;
typedef  int /*<<< orphan*/  htab_t ;
struct TYPE_5__ {int /*<<< orphan*/  decl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int dataflow_set_different_value ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__*,int) ; 

__attribute__((used)) static int
FUNC4 (void **slot, void *data)
{
  htab_t htab = (htab_t) data;
  variable var1, var2;

  var1 = *(variable *) slot;
  var2 = FUNC2 (htab, var1->decl,
			      FUNC0 (var1->decl));
  if (!var2)
    {
      dataflow_set_different_value = true;

      /* Stop traversing the hash table.  */
      return 0;
    }

  /* If both variables are defined they have been already checked for
     equivalence.  */
  FUNC1 (!FUNC3 (var1, var2, false));

  /* Continue traversing the hash table.  */
  return 1;
}