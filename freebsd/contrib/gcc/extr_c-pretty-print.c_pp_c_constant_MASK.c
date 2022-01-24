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
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef  int /*<<< orphan*/  c_pretty_printer ;

/* Variables and functions */
 int ENUMERAL_TYPE ; 
#define  INTEGER_CST 130 
#define  REAL_CST 129 
#define  STRING_CST 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  boolean_type_node ; 
 int /*<<< orphan*/  char_type_node ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC9 (c_pretty_printer *pp, tree e)
{
  const enum tree_code code = FUNC0 (e);

  switch (code)
    {
    case INTEGER_CST:
      {
	tree type = FUNC1 (e);
	if (type == boolean_type_node)
	  FUNC2 (pp, e);
	else if (type == char_type_node)
	  FUNC3 (pp, e);
	else if (FUNC0 (type) == ENUMERAL_TYPE
		 && FUNC4 (pp, e))
	  ;
	else
	  FUNC6 (pp, e);
      }
      break;

    case REAL_CST:
      FUNC5 (pp, e);
      break;

    case STRING_CST:
      FUNC7 (pp, e);
      break;

    default:
      FUNC8 (pp, e);
      break;
    }
}