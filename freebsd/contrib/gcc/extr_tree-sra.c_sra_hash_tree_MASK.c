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
typedef  int hashval_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
#define  FIELD_DECL 133 
#define  INTEGER_CST 132 
#define  PARM_DECL 131 
#define  RANGE_EXPR 130 
#define  RESULT_DECL 129 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
#define  VAR_DECL 128 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static hashval_t
FUNC9 (tree t)
{
  hashval_t h;

  switch (FUNC3 (t))
    {
    case VAR_DECL:
    case PARM_DECL:
    case RESULT_DECL:
      h = FUNC2 (t);
      break;

    case INTEGER_CST:
      h = FUNC5 (t) ^ FUNC4 (t);
      break;

    case RANGE_EXPR:
      h = FUNC8 (FUNC6 (t, 0), 0);
      h = FUNC8 (FUNC6 (t, 1), h);
      break;

    case FIELD_DECL:
      /* We can have types that are compatible, but have different member
	 lists, so we can't hash fields by ID.  Use offsets instead.  */
      h = FUNC8 (FUNC1 (t), 0);
      h = FUNC8 (FUNC0 (t), h);
      break;

    default:
      FUNC7 ();
    }

  return h;
}