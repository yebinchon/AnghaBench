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

/* Variables and functions */
 scalar_t__ CONST_DECL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ VAR_DECL ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC4 (tree decl)
{
  /* Only data DECLs can be placed into object blocks.  */
  if (FUNC2 (decl) != VAR_DECL && FUNC2 (decl) != CONST_DECL)
    return false;

  /* Detect decls created by dw2_force_const_mem.  Such decls are
     special because DECL_INITIAL doesn't specify the decl's true value.
     dw2_output_indirect_constants will instead call assemble_variable
     with dont_output_data set to 1 and then print the contents itself.  */
  if (FUNC1 (decl) == decl)
    return false;

  /* If this decl is an alias, then we don't want to emit a definition.  */
  if (FUNC3 ("alias", FUNC0 (decl)))
    return false;

  return true;
}