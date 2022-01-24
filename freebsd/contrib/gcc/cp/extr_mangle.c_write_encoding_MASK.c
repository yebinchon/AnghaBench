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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNCTION_DECL ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  NULL_TREE ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/  const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC17 (const tree decl)
{
  FUNC7 ("encoding", decl);

  if (FUNC4 (decl) && FUNC3 (decl))
    {
      /* For overloaded operators write just the mangled name
	 without arguments.  */
      if (FUNC6 (decl))
	FUNC15 (decl, /*ignore_local_scope=*/0);
      else
	FUNC16 (FUNC5 (decl));
      return;
    }

  FUNC15 (decl, /*ignore_local_scope=*/0);
  if (FUNC8 (decl) == FUNCTION_DECL)
    {
      tree fn_type;
      tree d;

      if (FUNC10 (decl, NULL))
	{
	  FUNC13 ();
	  fn_type = FUNC11 (decl);
	  FUNC12 ();
	  /* FN_TYPE will not have parameter types for in-charge or
	     VTT parameters.  Therefore, we pass NULL_TREE to
	     write_bare_function_type -- otherwise, it will get
	     confused about which artificial parameters to skip.  */
	  d = NULL_TREE;
	}
      else
	{
	  fn_type = FUNC9 (decl);
	  d = decl;
	}

      FUNC14 (fn_type,
				(!FUNC0 (decl)
				 && !FUNC2 (decl)
				 && !FUNC1 (decl)
				 && FUNC10 (decl, NULL)),
				d);
    }
}