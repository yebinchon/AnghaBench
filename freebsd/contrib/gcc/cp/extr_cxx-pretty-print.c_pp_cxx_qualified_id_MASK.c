#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct TYPE_7__ {int /*<<< orphan*/  enclosing_scope; } ;
typedef  TYPE_1__ cxx_pretty_printer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
#define  FUNCTION_DECL 132 
#define  OFFSET_REF 131 
#define  OVERLOAD 130 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
#define  PTRMEM_CST 129 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
#define  SCOPE_REF 128 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC15 (cxx_pretty_printer *pp, tree t)
{
  switch (FUNC6 (t))
    {
      /* A pointer-to-member is always qualified.  */
    case PTRMEM_CST:
      FUNC11 (pp, FUNC4 (t));
      FUNC14 (pp, FUNC5 (t));
      break;

      /* In Standard C++, functions cannot possibly be used as
	 nested-name-specifiers.  However, there are situations where
	 is "makes sense" to output the surrounding function name for the
	 purpose of emphasizing on the scope kind.  Just printing the
	 function name might not be sufficient as it may be overloaded; so,
	 we decorate the function with its signature too.
	 FIXME:  This is probably the wrong pretty-printing for conversion
	 functions and some function templates.  */
    case OVERLOAD:
      t = FUNC3 (t);
    case FUNCTION_DECL:
      if (FUNC2 (t))
	FUNC11 (pp, FUNC1 (t));
      FUNC14
	(pp, FUNC0 (t) ? FUNC1 (t) : t);
      FUNC12 (pp, FUNC8 (t));
      break;

    case OFFSET_REF:
    case SCOPE_REF:
      FUNC11 (pp, FUNC7 (t, 0));
      FUNC14 (pp, FUNC7 (t, 1));
      break;

    default:
      {
	tree scope = FUNC10 (t) ? FUNC9 (t) : FUNC1 (t);
	if (scope != pp->enclosing_scope)
	  {
	    FUNC11 (pp, scope);
	    FUNC13 (pp, scope, t);
	  }
	FUNC14 (pp, t);
      }
      break;
    }
}