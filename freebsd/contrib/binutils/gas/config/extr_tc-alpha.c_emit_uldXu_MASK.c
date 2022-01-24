#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  X_add_number; } ;
typedef  TYPE_1__ expressionS ;

/* Variables and functions */
 int /*<<< orphan*/  AXP_REG_AT ; 
 int /*<<< orphan*/  AXP_REG_T10 ; 
 int /*<<< orphan*/  AXP_REG_T9 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ alpha_noat_on ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_1__*,int,int) ; 
 char** extXh_op ; 
 char** extXl_op ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__ const*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7 (const expressionS *tok,
	    int ntok,
	    const void * vlgsize)
{
  long lgsize = (long) vlgsize;
  expressionS newtok[3];

  if (alpha_noat_on)
    FUNC1 (FUNC0("macro requires $at register while noat in effect"));

  /* Emit "lda $at, exp".  */
  FUNC3 (newtok, tok, sizeof (expressionS) * ntok);
  newtok[0].X_add_number = AXP_REG_AT;
  FUNC2 ("lda", newtok, ntok, 1);

  /* Emit "ldq_u $t9, 0($at)".  */
  FUNC6 (newtok[0], AXP_REG_T9);
  FUNC4 (newtok[1], 0);
  FUNC5 (newtok[2], AXP_REG_AT);
  FUNC2 ("ldq_u", newtok, 3, 1);

  /* Emit "ldq_u $t10, size-1($at)".  */
  FUNC6 (newtok[0], AXP_REG_T10);
  FUNC4 (newtok[1], (1 << lgsize) - 1);
  FUNC2 ("ldq_u", newtok, 3, 1);

  /* Emit "extXl $t9, $at, $t9".  */
  FUNC6 (newtok[0], AXP_REG_T9);
  FUNC6 (newtok[1], AXP_REG_AT);
  FUNC6 (newtok[2], AXP_REG_T9);
  FUNC2 (extXl_op[lgsize], newtok, 3, 1);

  /* Emit "extXh $t10, $at, $t10".  */
  FUNC6 (newtok[0], AXP_REG_T10);
  FUNC6 (newtok[2], AXP_REG_T10);
  FUNC2 (extXh_op[lgsize], newtok, 3, 1);

  /* Emit "or $t9, $t10, targ".  */
  FUNC6 (newtok[0], AXP_REG_T9);
  FUNC6 (newtok[1], AXP_REG_T10);
  newtok[2] = tok[0];
  FUNC2 ("or", newtok, 3, 1);
}