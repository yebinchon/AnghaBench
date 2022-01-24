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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
#define  FUNCTION_DECL 131 
#define  NAMESPACE_DECL 130 
 int FUNC4 (int /*<<< orphan*/ ) ; 
#define  TYPE_DECL 129 
#define  VAR_DECL 128 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC13 (cxx_pretty_printer *pp, tree t)
{
  if (!FUNC0 (t))
    FUNC10 (pp, t);
  else if (FUNC3 (t))
    switch (FUNC3 (t))
      {
      case 1:
	FUNC11 (pp, t);
	break;

      case 2:
	FUNC6 (pp, t);
	break;

      case 3:
	FUNC5 (pp, t);
	break;

      default:
	break;
      }
  else switch (FUNC4 (t))
    {
    case VAR_DECL:
    case TYPE_DECL:
      FUNC10 (pp, t);
      break;

    case FUNCTION_DECL:
      if (FUNC2 (t))
	FUNC7 (pp, t);
      else
	FUNC10 (pp, t);
      break;

    case NAMESPACE_DECL:
      if (FUNC1 (t))
	FUNC8 (pp, t);
      else
	FUNC9 (pp, t);
      break;

    default:
      FUNC12 (pp, t);
      break;
    }
}