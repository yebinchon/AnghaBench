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
 scalar_t__ BASELINK ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ IDENTIFIER_NODE ; 
 scalar_t__ OVERLOAD ; 
 scalar_t__ TEMPLATE_PARM_INDEX ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ TREE_LIST ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ TREE_VEC ; 
 scalar_t__ TYPE_DECL ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int FUNC8 (scalar_t__) ; 
 int FUNC9 (scalar_t__) ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int processing_template_decl ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 

int
FUNC13 (tree t)
{
  bool dependent_p;
  int saved_processing_template_decl;

  saved_processing_template_decl = processing_template_decl;
  if (!saved_processing_template_decl)
    processing_template_decl = 1;
  if (FUNC7 (t))
    dependent_p = FUNC9 (t);
  else if (FUNC4 (t) == TREE_VEC)
    dependent_p = FUNC8 (t);
  else if (FUNC4 (t) == TREE_LIST)
    dependent_p = (FUNC13 (FUNC6 (t))
		   || FUNC13 (FUNC3 (t)));
  else if (FUNC4 (t) == TYPE_DECL)
    dependent_p = FUNC9 (FUNC5 (t));
  else if (FUNC1 (t)
	   || FUNC2 (t)
	   || FUNC4 (t) == TEMPLATE_PARM_INDEX
	   || FUNC4 (t) == OVERLOAD
	   || FUNC4 (t) == BASELINK
	   || FUNC4 (t) == IDENTIFIER_NODE
	   || FUNC0 (t))
    dependent_p = (FUNC11 (t)
		   || FUNC12 (t));
  else
    {
      FUNC10 (t == error_mark_node);
      dependent_p = false;
    }

  processing_template_decl = saved_processing_template_decl;

  return dependent_p;
}