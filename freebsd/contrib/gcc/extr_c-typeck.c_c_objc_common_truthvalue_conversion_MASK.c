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
#define  ARRAY_TYPE 131 
#define  FUNCTION_TYPE 130 
#define  RECORD_TYPE 129 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  UNION_TYPE 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  error_mark_node ; 
 int /*<<< orphan*/  FUNC4 () ; 

tree
FUNC5 (tree expr)
{
  switch (FUNC0 (FUNC1 (expr)))
    {
    case ARRAY_TYPE:
      FUNC3 ("used array that cannot be converted to pointer where scalar is required");
      return error_mark_node;

    case RECORD_TYPE:
      FUNC3 ("used struct type value where scalar is required");
      return error_mark_node;

    case UNION_TYPE:
      FUNC3 ("used union type value where scalar is required");
      return error_mark_node;

    case FUNCTION_TYPE:
      FUNC4 ();

    default:
      break;
    }

  /* ??? Should we also give an error for void and vectors rather than
     leaving those to give errors later?  */
  return FUNC2 (expr);
}