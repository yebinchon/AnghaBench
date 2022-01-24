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
#define  COMPONENT_REF 132 
#define  COMPOUND_EXPR 131 
#define  COND_EXPR 130 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FIELD_DECL ; 
#define  MODIFY_EXPR 129 
 int /*<<< orphan*/  NULL_TREE ; 
#define  SAVE_EXPR 128 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

tree
FUNC6 (tree exp)
{
  switch (FUNC2 (exp))
    {
    case COND_EXPR:
      if (!FUNC6 (FUNC3 (exp, 1)))
	return NULL_TREE;
      return FUNC6 (FUNC3 (exp, 2));

    case COMPOUND_EXPR:
      return FUNC6 (FUNC3 (exp, 1));

    case MODIFY_EXPR:
    case SAVE_EXPR:
      return FUNC6 (FUNC3 (exp, 0));

    case COMPONENT_REF:
      {
	tree field;
	
	field = FUNC3 (exp, 1);
	if (FUNC2 (field) != FIELD_DECL || !FUNC1 (field))
	  return NULL_TREE;
	if (FUNC5
	    (FUNC4 (exp), FUNC0 (field)))
	  return NULL_TREE;
	return FUNC0 (field);
      }

    default:
      return NULL_TREE;
    }
}