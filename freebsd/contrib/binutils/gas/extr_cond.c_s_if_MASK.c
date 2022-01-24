#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct conditional_frame {int ignoring; TYPE_1__* previous_cframe; scalar_t__ dead_tree; } ;
typedef  int /*<<< orphan*/  operatorT ;
struct TYPE_5__ {scalar_t__ X_add_number; scalar_t__ X_op; } ;
typedef  TYPE_2__ expressionS ;
typedef  int /*<<< orphan*/  cframe ;
struct TYPE_4__ {int /*<<< orphan*/  ignoring; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 scalar_t__ O_constant ; 
#define  O_eq 133 
#define  O_ge 132 
#define  O_gt 131 
#define  O_le 130 
#define  O_lt 129 
#define  O_ne 128 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cond_obstack ; 
 struct conditional_frame* current_cframe ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 scalar_t__ flag_mri ; 
 int /*<<< orphan*/  FUNC7 (struct conditional_frame*) ; 
 scalar_t__* input_line_pointer ; 
 int /*<<< orphan*/ * is_end_of_line ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*,char) ; 
 char* FUNC10 (char*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,struct conditional_frame*,int) ; 

void
FUNC12 (int arg)
{
  expressionS operand;
  struct conditional_frame cframe;
  int t;
  char *stop = NULL;
  char stopc;

  if (flag_mri)
    stop = FUNC10 (&stopc);

  /* Leading whitespace is part of operand.  */
  FUNC1 ();

  if (current_cframe != NULL && current_cframe->ignoring)
    {
      operand.X_add_number = 0;
      while (! is_end_of_line[(unsigned char) *input_line_pointer])
	++input_line_pointer;
    }
  else
    {
      FUNC6 (&operand);
      if (operand.X_op != O_constant)
	FUNC4 (FUNC2("non-constant expression in \".if\" statement"));
    }

  switch ((operatorT) arg)
    {
    case O_eq: t = operand.X_add_number == 0; break;
    case O_ne: t = operand.X_add_number != 0; break;
    case O_lt: t = operand.X_add_number < 0; break;
    case O_le: t = operand.X_add_number <= 0; break;
    case O_ge: t = operand.X_add_number >= 0; break;
    case O_gt: t = operand.X_add_number > 0; break;
    default:
      FUNC3 ();
      return;
    }

  /* If the above error is signaled, this will dispatch
     using an undefined result.  No big deal.  */
  FUNC7 (&cframe);
  cframe.ignoring = cframe.dead_tree || ! t;
  current_cframe = ((struct conditional_frame *)
		    FUNC11 (&cond_obstack, &cframe, sizeof (cframe)));

  if (FUNC0 ()
      && cframe.ignoring
      && (cframe.previous_cframe == NULL
	  || ! cframe.previous_cframe->ignoring))
    FUNC8 (2);

  if (flag_mri)
    FUNC9 (stop, stopc);

  FUNC5 ();
}