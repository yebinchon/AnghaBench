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
 int /*<<< orphan*/  AXP_REG_T11 ; 
 int /*<<< orphan*/  AXP_REG_T12 ; 
 int /*<<< orphan*/  AXP_REG_T9 ; 
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*,int,int) ; 
 char** insXh_op ; 
 char** insXl_op ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__ const*,int) ; 
 char** mskXh_op ; 
 char** mskXl_op ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5 (const expressionS *tok,
	   int ntok,
	   const void * vlgsize)
{
  int lgsize = (int) (long) vlgsize;
  expressionS newtok[3];

  /* Emit "lda $at, exp".  */
  FUNC1 (newtok, tok, sizeof (expressionS) * ntok);
  newtok[0].X_add_number = AXP_REG_AT;
  FUNC0 ("lda", newtok, ntok, 1);

  /* Emit "ldq_u $9, 0($at)".  */
  FUNC4 (newtok[0], AXP_REG_T9);
  FUNC2 (newtok[1], 0);
  FUNC3 (newtok[2], AXP_REG_AT);
  FUNC0 ("ldq_u", newtok, 3, 1);

  /* Emit "ldq_u $10, size-1($at)".  */
  FUNC4 (newtok[0], AXP_REG_T10);
  FUNC2 (newtok[1], (1 << lgsize) - 1);
  FUNC0 ("ldq_u", newtok, 3, 1);

  /* Emit "insXl src, $at, $t11".  */
  newtok[0] = tok[0];
  FUNC4 (newtok[1], AXP_REG_AT);
  FUNC4 (newtok[2], AXP_REG_T11);
  FUNC0 (insXl_op[lgsize], newtok, 3, 1);

  /* Emit "insXh src, $at, $t12".  */
  FUNC4 (newtok[2], AXP_REG_T12);
  FUNC0 (insXh_op[lgsize], newtok, 3, 1);

  /* Emit "mskXl $t9, $at, $t9".  */
  FUNC4 (newtok[0], AXP_REG_T9);
  newtok[2] = newtok[0];
  FUNC0 (mskXl_op[lgsize], newtok, 3, 1);

  /* Emit "mskXh $t10, $at, $t10".  */
  FUNC4 (newtok[0], AXP_REG_T10);
  newtok[2] = newtok[0];
  FUNC0 (mskXh_op[lgsize], newtok, 3, 1);

  /* Emit "or $t9, $t11, $t9".  */
  FUNC4 (newtok[0], AXP_REG_T9);
  FUNC4 (newtok[1], AXP_REG_T11);
  newtok[2] = newtok[0];
  FUNC0 ("or", newtok, 3, 1);

  /* Emit "or $t10, $t12, $t10".  */
  FUNC4 (newtok[0], AXP_REG_T10);
  FUNC4 (newtok[1], AXP_REG_T12);
  newtok[2] = newtok[0];
  FUNC0 ("or", newtok, 3, 1);

  /* Emit "stq_u $t10, size-1($at)".  */
  FUNC4 (newtok[0], AXP_REG_T10);
  FUNC2 (newtok[1], (1 << lgsize) - 1);
  FUNC3 (newtok[2], AXP_REG_AT);
  FUNC0 ("stq_u", newtok, 3, 1);

  /* Emit "stq_u $t9, 0($at)".  */
  FUNC4 (newtok[0], AXP_REG_T9);
  FUNC2 (newtok[1], 0);
  FUNC0 ("stq_u", newtok, 3, 1);
}