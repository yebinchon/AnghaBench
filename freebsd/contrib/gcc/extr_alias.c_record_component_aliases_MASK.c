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
typedef  scalar_t__ HOST_WIDE_INT ;

/* Variables and functions */
#define  ARRAY_TYPE 132 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  COMPLEX_TYPE 131 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FIELD_DECL ; 
#define  QUAL_UNION_TYPE 130 
#define  RECORD_TYPE 129 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
#define  UNION_TYPE 128 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__) ; 

void
FUNC11 (tree type)
{
  HOST_WIDE_INT superset = FUNC9 (type);
  tree field;

  if (superset == 0)
    return;

  switch (FUNC4 (type))
    {
    case ARRAY_TYPE:
      if (! FUNC8 (type))
	FUNC10 (superset, FUNC9 (FUNC5 (type)));
      break;

    case RECORD_TYPE:
    case UNION_TYPE:
    case QUAL_UNION_TYPE:
      /* Recursively record aliases for the base classes, if there are any.  */
      if (FUNC6 (type))
	{
	  int i;
	  tree binfo, base_binfo;

	  for (binfo = FUNC6 (type), i = 0;
	       FUNC0 (binfo, i, base_binfo); i++)
	    FUNC10 (superset,
				 FUNC9 (FUNC1 (base_binfo)));
	}
      for (field = FUNC7 (type); field != 0; field = FUNC3 (field))
	if (FUNC4 (field) == FIELD_DECL && ! FUNC2 (field))
	  FUNC10 (superset, FUNC9 (FUNC5 (field)));
      break;

    case COMPLEX_TYPE:
      FUNC10 (superset, FUNC9 (FUNC5 (type)));
      break;

    default:
      break;
    }
}