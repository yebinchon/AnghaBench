#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct elt_loc_list {int /*<<< orphan*/  loc; struct elt_loc_list* next; } ;
typedef  int /*<<< orphan*/  rtx ;
struct TYPE_3__ {struct elt_loc_list* locs; } ;
typedef  TYPE_1__ cselib_val ;

/* Variables and functions */
 int ADDRESS ; 
#define  AND 146 
#define  CONST 145 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int CONST_INT ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
#define  HIGH 144 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
#define  LABEL_REF 143 
#define  LO_SUM 142 
#define  MINUS 141 
#define  PLUS 140 
#define  POST_DEC 139 
#define  POST_INC 138 
#define  POST_MODIFY 137 
#define  PRE_DEC 136 
#define  PRE_INC 135 
#define  PRE_MODIFY 134 
 int /*<<< orphan*/  Pmode ; 
#define  REG 133 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
#define  SIGN_EXTEND 132 
#define  SYMBOL_REF 131 
#define  TRUNCATE 130 
#define  VALUE 129 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
#define  ZERO_EXTEND 128 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pic_offset_table_rtx ; 

rtx
FUNC12 (rtx x)
{
  cselib_val *val;
  struct elt_loc_list *l;

#if defined (FIND_BASE_TERM)
  /* Try machine-dependent ways to find the base term.  */
  x = FIND_BASE_TERM (x);
#endif

  switch (FUNC3 (x))
    {
    case REG:
      return FUNC7 (x);

    case TRUNCATE:
      if (FUNC5 (FUNC4 (x)) < FUNC5 (Pmode))
	return 0;
      /* Fall through.  */
    case HIGH:
    case PRE_INC:
    case PRE_DEC:
    case POST_INC:
    case POST_DEC:
    case PRE_MODIFY:
    case POST_MODIFY:
      return FUNC12 (FUNC10 (x, 0));

    case ZERO_EXTEND:
    case SIGN_EXTEND:	/* Used for Alpha/NT pointers */
      {
	rtx temp = FUNC12 (FUNC10 (x, 0));

	if (temp != 0 && FUNC0 (temp))
	  temp = FUNC11 (Pmode, temp);

	return temp;
      }

    case VALUE:
      val = FUNC1 (x);
      if (!val)
	return 0;
      for (l = val->locs; l; l = l->next)
	if ((x = FUNC12 (l->loc)) != 0)
	  return x;
      return 0;

    case CONST:
      x = FUNC10 (x, 0);
      if (FUNC3 (x) != PLUS && FUNC3 (x) != MINUS)
	return 0;
      /* Fall through.  */
    case LO_SUM:
    case PLUS:
    case MINUS:
      {
	rtx tmp1 = FUNC10 (x, 0);
	rtx tmp2 = FUNC10 (x, 1);

	/* This is a little bit tricky since we have to determine which of
	   the two operands represents the real base address.  Otherwise this
	   routine may return the index register instead of the base register.

	   That may cause us to believe no aliasing was possible, when in
	   fact aliasing is possible.

	   We use a few simple tests to guess the base register.  Additional
	   tests can certainly be added.  For example, if one of the operands
	   is a shift or multiply, then it must be the index register and the
	   other operand is the base register.  */

	if (tmp1 == pic_offset_table_rtx && FUNC0 (tmp2))
	  return FUNC12 (tmp2);

	/* If either operand is known to be a pointer, then use it
	   to determine the base term.  */
	if (FUNC8 (tmp1) && FUNC9 (tmp1))
	  return FUNC12 (tmp1);

	if (FUNC8 (tmp2) && FUNC9 (tmp2))
	  return FUNC12 (tmp2);

	/* Neither operand was known to be a pointer.  Go ahead and find the
	   base term for both operands.  */
	tmp1 = FUNC12 (tmp1);
	tmp2 = FUNC12 (tmp2);

	/* If either base term is named object or a special address
	   (like an argument or stack reference), then use it for the
	   base term.  */
	if (tmp1 != 0
	    && (FUNC3 (tmp1) == SYMBOL_REF
		|| FUNC3 (tmp1) == LABEL_REF
		|| (FUNC3 (tmp1) == ADDRESS
		    && FUNC4 (tmp1) != VOIDmode)))
	  return tmp1;

	if (tmp2 != 0
	    && (FUNC3 (tmp2) == SYMBOL_REF
		|| FUNC3 (tmp2) == LABEL_REF
		|| (FUNC3 (tmp2) == ADDRESS
		    && FUNC4 (tmp2) != VOIDmode)))
	  return tmp2;

	/* We could not determine which of the two operands was the
	   base register and which was the index.  So we can determine
	   nothing from the base alias check.  */
	return 0;
      }

    case AND:
      if (FUNC3 (FUNC10 (x, 1)) == CONST_INT && FUNC6 (FUNC10 (x, 1)) != 0)
	return FUNC12 (FUNC10 (x, 0));
      return 0;

    case SYMBOL_REF:
    case LABEL_REF:
      return x;

    default:
      return 0;
    }
}