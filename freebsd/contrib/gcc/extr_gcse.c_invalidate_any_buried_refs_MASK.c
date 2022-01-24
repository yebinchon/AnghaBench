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
struct ls_expr {int invalid; } ;
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 
 struct ls_expr* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9 (rtx x)
{
  const char * fmt;
  int i, j;
  struct ls_expr * ptr;

  /* Invalidate it in the list.  */
  if (FUNC3 (x) && FUNC8 (x))
    {
      ptr = FUNC7 (x);
      ptr->invalid = 1;
    }

  /* Recursively process the insn.  */
  fmt = FUNC1 (FUNC0 (x));

  for (i = FUNC2 (FUNC0 (x)) - 1; i >= 0; i--)
    {
      if (fmt[i] == 'e')
	FUNC9 (FUNC4 (x, i));
      else if (fmt[i] == 'E')
	for (j = FUNC6 (x, i) - 1; j >= 0; j--)
	  FUNC9 (FUNC5 (x, i, j));
    }
}