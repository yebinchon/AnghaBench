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
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 scalar_t__ access_private_node ; 
 scalar_t__ access_protected_node ; 
 scalar_t__ access_public_node ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 scalar_t__ FUNC15 (scalar_t__) ; 
 scalar_t__ FUNC16 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  processing_template_decl ; 

__attribute__((used)) static void
FUNC17 (tree using_decl, tree t)
{
  tree decl = FUNC8 (using_decl);
  tree name = FUNC2 (using_decl);
  tree access
    = FUNC6 (using_decl) ? access_private_node
    : FUNC7 (using_decl) ? access_protected_node
    : access_public_node;
  tree flist = NULL_TREE;
  tree old_value;

  FUNC14 (!processing_template_decl && decl);

  old_value = FUNC16 (t, name, /*protect=*/0, /*want_type=*/false);
  if (old_value)
    {
      if (FUNC15 (old_value))
	old_value = FUNC4 (old_value);

      if (FUNC3 (old_value) && FUNC1 (old_value) == t)
	/* OK */;
      else
	old_value = NULL_TREE;
    }

  FUNC12 (decl, FUNC9 (using_decl));

  if (FUNC15 (decl))
    flist = decl;

  if (! old_value)
    ;
  else if (FUNC15 (old_value))
    {
      if (flist)
	/* It's OK to use functions from a base when there are functions with
	   the same name already present in the current class.  */;
      else
	{
	  FUNC13 ("%q+D invalid in %q#T", using_decl, t);
	  FUNC13 ("  because of local method %q+#D with same name",
		 FUNC4 (old_value));
	  return;
	}
    }
  else if (!FUNC0 (old_value))
    {
      FUNC13 ("%q+D invalid in %q#T", using_decl, t);
      FUNC13 ("  because of local member %q+#D with same name", old_value);
      return;
    }

  /* Make type T see field decl FDECL with access ACCESS.  */
  if (flist)
    for (; flist; flist = FUNC5 (flist))
      {
	FUNC10 (t, FUNC4 (flist), using_decl);
	FUNC11 (t, FUNC4 (flist), access);
      }
  else
    FUNC11 (t, decl, access);
}