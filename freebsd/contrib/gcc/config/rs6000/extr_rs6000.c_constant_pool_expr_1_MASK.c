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
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  CONST 132 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  CONST_INT 131 
 int FUNC2 (int /*<<< orphan*/ ) ; 
#define  MINUS 130 
#define  PLUS 129 
 int /*<<< orphan*/  Pmode ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
#define  SYMBOL_REF 128 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  toc_label_name ; 

__attribute__((used)) static int
FUNC8 (rtx op, int *have_sym, int *have_toc)
{
  switch (FUNC2 (op))
    {
    case SYMBOL_REF:
      if (FUNC3 (op))
	return 0;
      else if (FUNC1 (op))
	{
	  if (FUNC0 (FUNC6 (op), Pmode))
	    {
	      *have_sym = 1;
	      return 1;
	    }
	  else
	    return 0;
	}
      else if (! FUNC7 (FUNC5 (op, 0), toc_label_name))
	{
	  *have_toc = 1;
	  return 1;
	}
      else
	return 0;
    case PLUS:
    case MINUS:
      return (FUNC8 (FUNC4 (op, 0), have_sym, have_toc)
	      && FUNC8 (FUNC4 (op, 1), have_sym, have_toc));
    case CONST:
      return FUNC8 (FUNC4 (op, 0), have_sym, have_toc);
    case CONST_INT:
      return 1;
    default:
      return 0;
    }
}