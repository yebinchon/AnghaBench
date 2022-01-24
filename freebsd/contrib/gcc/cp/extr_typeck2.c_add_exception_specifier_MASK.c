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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NULL_TREE ; 
 scalar_t__ POINTER_TYPE ; 
 scalar_t__ REFERENCE_TYPE ; 
 scalar_t__ TEMPLATE_TYPE_PARM ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ processing_template_decl ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

tree
FUNC11 (tree list, tree spec, int complain)
{
  bool ok;
  tree core = spec;
  bool is_ptr;
  int diag_type = -1; /* none */

  if (spec == error_mark_node)
    return list;

  FUNC8 (spec && (!list || FUNC4 (list)));

  /* [except.spec] 1, type in an exception specifier shall not be
     incomplete, or pointer or ref to incomplete other than pointer
     to cv void.  */
  is_ptr = FUNC2 (core) == POINTER_TYPE;
  if (is_ptr || FUNC2 (core) == REFERENCE_TYPE)
    core = FUNC3 (core);
  if (complain < 0)
    ok = true;
  else if (FUNC5 (core))
    ok = is_ptr;
  else if (FUNC2 (core) == TEMPLATE_TYPE_PARM)
    ok = true;
  else if (processing_template_decl)
    ok = true;
  else
    {
      ok = true;
      /* 15.4/1 says that types in an exception specifier must be complete,
	 but it seems more reasonable to only require this on definitions
	 and calls.  So just give a pedwarn at this point; we will give an
	 error later if we hit one of those two cases.  */
      if (!FUNC0 (FUNC6 (core)))
	diag_type = 2; /* pedwarn */
    }

  if (ok)
    {
      tree probe;

      for (probe = list; probe; probe = FUNC1 (probe))
	if (FUNC9 (FUNC4 (probe), spec))
	  break;
      if (!probe)
	list = FUNC10 (NULL_TREE, spec, list);
    }
  else
    diag_type = 0; /* error */

  if (diag_type >= 0 && complain)
    FUNC7 (NULL_TREE, core, diag_type);

  return list;
}