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
struct table_elt {int /*<<< orphan*/  exp; struct table_elt* next_same_value; struct table_elt* first_same_value; } ;
typedef  int /*<<< orphan*/  rtx ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;

/* Variables and functions */
 int CONST_INT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 struct table_elt* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  word_mode ; 

__attribute__((used)) static rtx
FUNC8 (rtx x, enum rtx_code code)
{
  struct table_elt *p
    = FUNC7 (x, FUNC4 (x, VOIDmode), FUNC1 (x));

  /* If we are looking for a CONST_INT, the mode doesn't really matter, as
     long as we are narrowing.  So if we looked in vain for a mode narrower
     than word_mode before, look for word_mode now.  */
  if (p == 0 && code == CONST_INT
      && FUNC2 (FUNC1 (x)) < FUNC2 (word_mode))
    {
      x = FUNC5 (x);
      FUNC3 (x, word_mode);
      p = FUNC7 (x, FUNC4 (x, VOIDmode), word_mode);
    }

  if (p == 0)
    return 0;

  for (p = p->first_same_value; p; p = p->next_same_value)
    if (FUNC0 (p->exp) == code
	/* Make sure this is a valid entry in the table.  */
	&& FUNC6 (p->exp, p->exp, 1, false))
      return p->exp;

  return 0;
}