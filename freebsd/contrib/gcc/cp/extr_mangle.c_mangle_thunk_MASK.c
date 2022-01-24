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
typedef  int /*<<< orphan*/  tree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ DEBUG_MANGLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 int /*<<< orphan*/  integer_zero_node ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC11 (char) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

tree
FUNC14 (tree fn_decl, const int this_adjusting, tree fixed_offset,
	      tree virtual_offset)
{
  const char *result;

  FUNC10 (fn_decl, /*ident_p=*/true);

  FUNC13 ("_Z");
  FUNC11 ('T');

  if (!this_adjusting)
    {
      /* Covariant thunk with no this adjustment */
      FUNC11 ('c');
      FUNC8 (integer_zero_node, NULL_TREE);
      FUNC8 (fixed_offset, virtual_offset);
    }
  else if (!FUNC1 (fn_decl))
    /* Plain this adjusting thunk.  */
    FUNC8 (fixed_offset, virtual_offset);
  else
    {
      /* This adjusting thunk to covariant thunk.  */
      FUNC11 ('c');
      FUNC8 (fixed_offset, virtual_offset);
      fixed_offset = FUNC9 (FUNC2 (fn_decl));
      virtual_offset = FUNC4 (fn_decl);
      if (virtual_offset)
	virtual_offset = FUNC0 (virtual_offset);
      FUNC8 (fixed_offset, virtual_offset);
      fn_decl = FUNC3 (fn_decl);
    }

  /* Scoped name.  */
  FUNC12 (fn_decl);

  result = FUNC5 (/*warn=*/false);
  if (DEBUG_MANGLE)
    FUNC6 (stderr, "mangle_thunk = %s\n\n", result);
  return FUNC7 (result);
}