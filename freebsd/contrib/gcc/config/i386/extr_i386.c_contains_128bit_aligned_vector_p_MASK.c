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
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
#define  ARRAY_TYPE 131 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FIELD_DECL ; 
#define  QUAL_UNION_TYPE 130 
#define  RECORD_TYPE 129 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
#define  UNION_TYPE 128 
 int /*<<< orphan*/  FUNC12 () ; 

__attribute__((used)) static bool
FUNC13 (tree type)
{
  enum machine_mode mode = FUNC10 (type);
  if (FUNC3 (mode)
      && (!FUNC11 (type) || FUNC7 (type) > 128))
    return true;
  if (FUNC7 (type) < 128)
    return false;

  if (FUNC0 (type))
    {
      /* Walk the aggregates recursively.  */
      switch (FUNC5 (type))
	{
	case RECORD_TYPE:
	case UNION_TYPE:
	case QUAL_UNION_TYPE:
	  {
	    tree field;

	    if (FUNC8 (type))
	      {
		tree binfo, base_binfo;
		int i;

		for (binfo = FUNC8 (type), i = 0;
		     FUNC1 (binfo, i, base_binfo); i++)
		  if (FUNC13
		      (FUNC2 (base_binfo)))
		    return true;
	      }
	    /* And now merge the fields of structure.  */
	    for (field = FUNC9 (type); field; field = FUNC4 (field))
	      {
		if (FUNC5 (field) == FIELD_DECL
		    && FUNC13 (FUNC6 (field)))
		  return true;
	      }
	    break;
	  }

	case ARRAY_TYPE:
	  /* Just for use if some languages passes arrays by value.  */
	  if (FUNC13 (FUNC6 (type)))
	    return true;
	  break;

	default:
	  FUNC12 ();
	}
    }
  return false;
}