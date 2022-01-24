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
typedef  scalar_t__ tree ;
struct TYPE_2__ {int /*<<< orphan*/  decl; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  VARYING ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* cfun ; 
 int /*<<< orphan*/  complex_lattice_t ; 
 int /*<<< orphan*/  complex_lattice_values ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC6 (scalar_t__) ; 

__attribute__((used)) static void
FUNC7 (void)
{
  tree parm;

  for (parm = FUNC0 (cfun->decl); parm ; parm = FUNC2 (parm))
    if (FUNC5 (parm) && FUNC6 (parm) != NULL)
      {
	tree ssa_name = FUNC4 (parm);
	FUNC3 (complex_lattice_t, complex_lattice_values,
		     FUNC1 (ssa_name), VARYING);
      }
}