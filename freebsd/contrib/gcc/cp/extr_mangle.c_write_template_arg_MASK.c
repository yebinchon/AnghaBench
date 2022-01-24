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
typedef  int /*<<< orphan*/  tree ;
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;
struct TYPE_2__ {int need_abi_warning; } ;

/* Variables and functions */
 scalar_t__ ADDR_EXPR ; 
 int CONST_DECL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__ G ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ NOP_EXPR ; 
 int PTRMEM_CST ; 
 scalar_t__ REFERENCE_TYPE ; 
 int TEMPLATE_DECL ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int TREE_LIST ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 scalar_t__ tcc_constant ; 
 int /*<<< orphan*/  FUNC10 (char) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC17 (tree node)
{
  enum tree_code code = FUNC2 (node);

  FUNC1 ("template-arg", node);

  /* A template template parameter's argument list contains TREE_LIST
     nodes of which the value field is the actual argument.  */
  if (code == TREE_LIST)
    {
      node = FUNC6 (node);
      /* If it's a decl, deal with its type instead.  */
      if (FUNC0 (node))
	{
	  node = FUNC5 (node);
	  code = FUNC2 (node);
	}
    }

  if (FUNC2 (node) == NOP_EXPR
      && FUNC2 (FUNC5 (node)) == REFERENCE_TYPE)
    {
      /* Template parameters can be of reference type. To maintain
	 internal consistency, such arguments use a conversion from
	 address of object to reference type.  */
      FUNC9 (FUNC2 (FUNC4 (node, 0)) == ADDR_EXPR);
      if (FUNC8 (2))
	node = FUNC4 (FUNC4 (node, 0), 0);
      else
	G.need_abi_warning = 1;
    }

  if (FUNC7 (node))
    FUNC16 (node);
  else if (code == TEMPLATE_DECL)
    /* A template appearing as a template arg is a template template arg.  */
    FUNC15 (node);
  else if ((FUNC3 (code) == tcc_constant && code != PTRMEM_CST)
	   || (FUNC8 (2) && code == CONST_DECL))
    FUNC14 (node);
  else if (FUNC0 (node))
    {
      /* Until ABI version 2, non-type template arguments of
	 enumeration type were mangled using their names.  */
      if (code == CONST_DECL && !FUNC8 (2))
	G.need_abi_warning = 1;
      FUNC10 ('L');
      /* Until ABI version 3, the underscore before the mangled name
	 was incorrectly omitted.  */
      if (!FUNC8 (3))
	{
	  G.need_abi_warning = 1;
	  FUNC10 ('Z');
	}
      else
	FUNC13 ("_Z");
      FUNC11 (node);
      FUNC10 ('E');
    }
  else
    {
      /* Template arguments may be expressions.  */
      FUNC10 ('X');
      FUNC12 (node);
      FUNC10 ('E');
    }
}