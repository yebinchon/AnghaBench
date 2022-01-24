#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ valueT ;
typedef  scalar_t__ operatorT ;
struct TYPE_6__ {scalar_t__ X_op; scalar_t__ X_add_number; int /*<<< orphan*/  X_unsigned; } ;
typedef  TYPE_1__ expressionS ;

/* Variables and functions */
 scalar_t__ O_absent ; 
 scalar_t__ O_big ; 
 scalar_t__ O_constant ; 
 scalar_t__ O_illegal ; 
 scalar_t__ O_register ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 char* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  generic_bignum ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 (char*,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,scalar_t__,int) ; 
 int /*<<< orphan*/  rs_leb128 ; 
 int FUNC12 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 

__attribute__((used)) static void
FUNC14 (expressionS *exp, int sign)
{
  operatorT op = exp->X_op;
  unsigned int nbytes;

  if (op == O_absent || op == O_illegal)
    {
      FUNC3 (FUNC0("zero assumed for missing expression"));
      exp->X_add_number = 0;
      op = O_constant;
    }
  else if (op == O_big && exp->X_add_number <= 0)
    {
      FUNC2 (FUNC0("floating point number invalid"));
      exp->X_add_number = 0;
      op = O_constant;
    }
  else if (op == O_register)
    {
      FUNC3 (FUNC0("register value used as expression"));
      op = O_constant;
    }
  else if (op == O_constant
	   && sign
	   && (exp->X_add_number < 0) != !exp->X_unsigned)
    {
      /* We're outputting a signed leb128 and the sign of X_add_number
	 doesn't reflect the sign of the original value.  Convert EXP
	 to a correctly-extended bignum instead.  */
      FUNC5 (exp);
      op = O_big;
    }

  /* Let check_eh_frame know that data is being emitted.  nbytes == -1 is
     a signal that this is leb128 data.  It shouldn't optimize this away.  */
  nbytes = (unsigned int) -1;
  if (FUNC4 (exp, &nbytes))
    FUNC1 ();

  /* Let the backend know that subsequent data may be byte aligned.  */
#ifdef md_cons_align
  md_cons_align (1);
#endif

  if (op == O_constant)
    {
      /* If we've got a constant, emit the thing directly right now.  */

      valueT value = exp->X_add_number;
      int size;
      char *p;

      size = FUNC12 (value, sign);
      p = FUNC6 (size);
      FUNC11 (p, value, sign);
    }
  else if (op == O_big)
    {
      /* O_big is a different sort of constant.  */

      int size;
      char *p;

      size = FUNC10 (NULL, generic_bignum, exp->X_add_number, sign);
      p = FUNC6 (size);
      FUNC10 (p, generic_bignum, exp->X_add_number, sign);
    }
  else
    {
      /* Otherwise, we have to create a variable sized fragment and
	 resolve things later.  */

      FUNC7 (rs_leb128, FUNC13 (~(valueT) 0), 0, sign,
		FUNC8 (exp), 0, (char *) NULL);
    }
}