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
typedef  int /*<<< orphan*/  cxx_pretty_printer ;

/* Variables and functions */
#define  CONST_DECL 134 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
#define  FIELD_DECL 133 
#define  FUNCTION_DECL 132 
#define  PARM_DECL 131 
#define  RECORD_TYPE 130 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
#define  TYPE_DECL 129 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
#define  VAR_DECL 128 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC14 (cxx_pretty_printer *pp, tree t)
{
  switch (FUNC3 (t))
    {
    case VAR_DECL:
    case PARM_DECL:
    case CONST_DECL:
    case FIELD_DECL:
      FUNC12 (pp, t);
      FUNC14 (pp, FUNC4 (t));
      break;

    case TYPE_DECL:
      FUNC10 (pp, "typedef");
      FUNC14 (pp, FUNC4 (t));
      break;

    case RECORD_TYPE:
      if (FUNC6 (t))
	{
	  tree pfm = FUNC5 (t);
	  FUNC14 (pp, FUNC4 (FUNC4 (pfm)));
	  FUNC13 (pp);
	  FUNC11 (pp, t);
	}
      break;

    case FUNCTION_DECL:
      /* Constructors don't have return types.  And conversion functions
	 do not have a type-specifier in their return types.  */
      if (FUNC0 (t) || FUNC1 (t))
	FUNC9 (pp, t);
      else if (FUNC2 (t))
	FUNC14 (pp, FUNC4 (FUNC4 (t)));
      else
	default:
      FUNC8 (FUNC7 (pp), t);
      break;
    }
}