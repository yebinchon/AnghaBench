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
struct addr_const {int offset; int /*<<< orphan*/  base; } ;
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 int ARRAY_RANGE_REF ; 
 int ARRAY_REF ; 
#define  COMPLEX_CST 135 
 int COMPONENT_REF ; 
#define  CONSTRUCTOR 134 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  FUNCTION_DECL 133 
 int /*<<< orphan*/  FUNCTION_MODE ; 
#define  INTEGER_CST 132 
#define  LABEL_DECL 131 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Pmode ; 
#define  REAL_CST 130 
#define  STRING_CST 129 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
#define  VAR_DECL 128 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 
 int FUNC16 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC17 (tree exp, struct addr_const *value)
{
  tree target = FUNC3 (exp, 0);
  int offset = 0;
  rtx x;

  while (1)
    {
      if (FUNC2 (target) == COMPONENT_REF
	  && FUNC13 (FUNC7 (FUNC3 (target, 1)), 0))

	{
	  offset += FUNC14 (FUNC3 (target, 1));
	  target = FUNC3 (target, 0);
	}
      else if (FUNC2 (target) == ARRAY_REF
	       || FUNC2 (target) == ARRAY_RANGE_REF)
	{
	  offset += (FUNC16 (FUNC5 (FUNC4 (target)), 1)
		     * FUNC16 (FUNC3 (target, 1), 0));
	  target = FUNC3 (target, 0);
	}
      else
	break;
    }

  switch (FUNC2 (target))
    {
    case VAR_DECL:
    case FUNCTION_DECL:
      x = FUNC0 (target);
      break;

    case LABEL_DECL:
      x = FUNC12 (FUNCTION_MODE,
		       FUNC11 (Pmode, FUNC8 (target)));
      break;

    case REAL_CST:
    case STRING_CST:
    case COMPLEX_CST:
    case CONSTRUCTOR:
    case INTEGER_CST:
      x = FUNC15 (target, 1);
      break;

    default:
      FUNC10 ();
    }

  FUNC9 (FUNC1 (x));
  x = FUNC6 (x, 0);

  value->base = x;
  value->offset = offset;
}