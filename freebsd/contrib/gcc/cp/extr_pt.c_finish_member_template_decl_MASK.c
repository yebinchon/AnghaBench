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
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FIELD_DECL ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ TYPE_DECL ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (char*,scalar_t__) ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

tree
FUNC13 (tree decl)
{
  if (decl == error_mark_node)
    return error_mark_node;

  FUNC12 (FUNC3 (decl));

  if (FUNC8 (decl) == TYPE_DECL)
    {
      tree type;

      type = FUNC9 (decl);
      if (FUNC7 (type)
	  && FUNC0 (type)
	  && !FUNC1 (type))
	{
	  tree tmpl = FUNC2 (type);
	  FUNC10 (tmpl);
	  return tmpl;
	}
      return NULL_TREE;
    }
  else if (FUNC8 (decl) == FIELD_DECL)
    FUNC11 ("data member %qD cannot be a member template", decl);
  else if (FUNC4 (decl))
    {
      if (!FUNC5 (decl))
	{
	  FUNC10 (FUNC6 (decl));
	  return FUNC6 (decl);
	}
      else
	return decl;
    }
  else
    FUNC11 ("invalid member template declaration %qD", decl);

  return error_mark_node;
}