#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct data {TYPE_1__* operand; int /*<<< orphan*/  lineno; } ;
typedef  scalar_t__ rtx ;
struct TYPE_2__ {int seen; int strict_low; char* predicate; int address_p; int eliminable; void* constraint; void* mode; int /*<<< orphan*/  n_alternatives; } ;

/* Variables and functions */
#define  ADDRESS 136 
 int FUNC0 (scalar_t__) ; 
 void* FUNC1 (scalar_t__) ; 
 char* FUNC2 (int) ; 
 int FUNC3 (int) ; 
#define  MATCH_DUP 135 
#define  MATCH_OPERAND 134 
#define  MATCH_OPERATOR 133 
#define  MATCH_OP_DUP 132 
#define  MATCH_PARALLEL 131 
#define  MATCH_PAR_DUP 130 
#define  MATCH_SCRATCH 129 
 int MAX_MAX_OPERANDS ; 
#define  STRICT_LOW_PART 128 
 scalar_t__ FUNC4 (scalar_t__,int) ; 
 int FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 void* FUNC6 (scalar_t__,int) ; 
 int /*<<< orphan*/ * FUNC7 (scalar_t__,int) ; 
 scalar_t__ FUNC8 (scalar_t__,int,int) ; 
 int FUNC9 (scalar_t__,int) ; 
 int have_error ; 
 int max_opno ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char,void*) ; 
 int /*<<< orphan*/  num_dups ; 
 void* FUNC12 (void*) ; 

__attribute__((used)) static void
FUNC13 (struct data *d, rtx part, int this_address_p,
	       int this_strict_low)
{
  int i, j;
  const char *format_ptr;
  int opno;

  if (part == 0)
    return;

  switch (FUNC0 (part))
    {
    case MATCH_OPERAND:
      opno = FUNC5 (part, 0);
      if (opno > max_opno)
	max_opno = opno;
      if (max_opno >= MAX_MAX_OPERANDS)
	{
	  FUNC10 (d->lineno,
			     "maximum number of operands exceeded");
	  have_error = 1;
	  return;
	}
      if (d->operand[opno].seen)
	{
	  FUNC10 (d->lineno,
			     "repeated operand number %d\n", opno);
	  have_error = 1;
	}

      d->operand[opno].seen = 1;
      d->operand[opno].mode = FUNC1 (part);
      d->operand[opno].strict_low = this_strict_low;
      d->operand[opno].predicate = FUNC6 (part, 1);
      d->operand[opno].constraint = FUNC12 (FUNC6 (part, 2));
      d->operand[opno].n_alternatives
	= FUNC11 (',', d->operand[opno].constraint) + 1;
      d->operand[opno].address_p = this_address_p;
      d->operand[opno].eliminable = 1;
      return;

    case MATCH_SCRATCH:
      opno = FUNC5 (part, 0);
      if (opno > max_opno)
	max_opno = opno;
      if (max_opno >= MAX_MAX_OPERANDS)
	{
	  FUNC10 (d->lineno,
			     "maximum number of operands exceeded");
	  have_error = 1;
	  return;
	}
      if (d->operand[opno].seen)
	{
	  FUNC10 (d->lineno,
			     "repeated operand number %d\n", opno);
	  have_error = 1;
	}

      d->operand[opno].seen = 1;
      d->operand[opno].mode = FUNC1 (part);
      d->operand[opno].strict_low = 0;
      d->operand[opno].predicate = "scratch_operand";
      d->operand[opno].constraint = FUNC12 (FUNC6 (part, 1));
      d->operand[opno].n_alternatives
	= FUNC11 (',', d->operand[opno].constraint) + 1;
      d->operand[opno].address_p = 0;
      d->operand[opno].eliminable = 0;
      return;

    case MATCH_OPERATOR:
    case MATCH_PARALLEL:
      opno = FUNC5 (part, 0);
      if (opno > max_opno)
	max_opno = opno;
      if (max_opno >= MAX_MAX_OPERANDS)
	{
	  FUNC10 (d->lineno,
			     "maximum number of operands exceeded");
	  have_error = 1;
	  return;
	}
      if (d->operand[opno].seen)
	{
	  FUNC10 (d->lineno,
			     "repeated operand number %d\n", opno);
	  have_error = 1;
	}

      d->operand[opno].seen = 1;
      d->operand[opno].mode = FUNC1 (part);
      d->operand[opno].strict_low = 0;
      d->operand[opno].predicate = FUNC6 (part, 1);
      d->operand[opno].constraint = 0;
      d->operand[opno].address_p = 0;
      d->operand[opno].eliminable = 0;
      for (i = 0; i < FUNC9 (part, 2); i++)
	FUNC13 (d, FUNC8 (part, 2, i), 0, 0);
      return;

    case MATCH_DUP:
    case MATCH_OP_DUP:
    case MATCH_PAR_DUP:
      ++num_dups;
      break;

    case ADDRESS:
      FUNC13 (d, FUNC4 (part, 0), 1, 0);
      return;

    case STRICT_LOW_PART:
      FUNC13 (d, FUNC4 (part, 0), 0, 1);
      return;

    default:
      break;
    }

  format_ptr = FUNC2 (FUNC0 (part));

  for (i = 0; i < FUNC3 (FUNC0 (part)); i++)
    switch (*format_ptr++)
      {
      case 'e':
      case 'u':
	FUNC13 (d, FUNC4 (part, i), 0, 0);
	break;
      case 'E':
	if (FUNC7 (part, i) != NULL)
	  for (j = 0; j < FUNC9 (part, i); j++)
	    FUNC13 (d, FUNC8 (part, i, j), 0, 0);
	break;
      }
}