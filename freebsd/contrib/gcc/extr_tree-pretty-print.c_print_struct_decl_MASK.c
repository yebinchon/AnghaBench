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
typedef  int /*<<< orphan*/  pretty_printer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ POINTER_TYPE ; 
 scalar_t__ QUAL_UNION_TYPE ; 
 scalar_t__ RECORD_TYPE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ UNION_TYPE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,scalar_t__,int,int) ; 

__attribute__((used)) static void
FUNC11 (pretty_printer *buffer, tree node, int spc, int flags)
{
  /* Print the name of the structure.  */
  if (FUNC5 (node))
    {
      FUNC0 (spc);
      if (FUNC2 (node) == RECORD_TYPE)
	FUNC9 (buffer, "struct ");
      else if ((FUNC2 (node) == UNION_TYPE
		|| FUNC2 (node) == QUAL_UNION_TYPE))
	FUNC9 (buffer, "union ");

      FUNC6 (buffer, FUNC5 (node), spc, 0, false);
    }

  /* Print the contents of the structure.  */
  FUNC8 (buffer);
  FUNC0 (spc);
  FUNC7 (buffer, '{');
  FUNC8 (buffer);

  /* Print the fields of the structure.  */
  {
    tree tmp;
    tmp = FUNC4 (node);
    while (tmp)
      {
	/* Avoid to print recursively the structure.  */
	/* FIXME : Not implemented correctly...,
	   what about the case when we have a cycle in the contain graph? ...
	   Maybe this could be solved by looking at the scope in which the
	   structure was declared.  */
	if (FUNC3 (tmp) != node
	    || (FUNC2 (FUNC3 (tmp)) == POINTER_TYPE
		&& FUNC3 (FUNC3 (tmp)) != node))
	  {
	    FUNC10 (buffer, tmp, spc+2, flags);
	    FUNC8 (buffer);
	  }
	tmp = FUNC1 (tmp);
      }
  }
  FUNC0 (spc);
  FUNC7 (buffer, '}');
}