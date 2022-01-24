#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  operatorT ;
struct TYPE_10__ {scalar_t__ X_op; int /*<<< orphan*/  X_add_number; } ;
typedef  TYPE_4__ expressionS ;
struct TYPE_8__ {int /*<<< orphan*/  line; int /*<<< orphan*/  file; } ;
struct TYPE_7__ {int /*<<< orphan*/  line; int /*<<< orphan*/  file; } ;
struct TYPE_11__ {int dead_tree; int ignoring; TYPE_3__* previous_cframe; TYPE_2__ else_file_line; TYPE_1__ if_file_line; scalar_t__ else_seen; } ;
struct TYPE_9__ {int /*<<< orphan*/  ignoring; } ;

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
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_6__* current_cframe ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 scalar_t__* input_line_pointer ; 
 int /*<<< orphan*/ * is_end_of_line ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

void
FUNC10 (int arg)
{
  if (current_cframe == NULL)
    {
      FUNC4 (FUNC2("\".elseif\" without matching \".if\""));
    }
  else if (current_cframe->else_seen)
    {
      FUNC4 (FUNC2("\".elseif\" after \".else\""));
      FUNC5 (current_cframe->else_file_line.file,
		    current_cframe->else_file_line.line,
		    FUNC2("here is the previous \"else\""));
      FUNC5 (current_cframe->if_file_line.file,
		    current_cframe->if_file_line.line,
		    FUNC2("here is the previous \"if\""));
    }
  else
    {
      FUNC6 (&current_cframe->else_file_line.file,
		&current_cframe->else_file_line.line);

      current_cframe->dead_tree |= !current_cframe->ignoring;
      current_cframe->ignoring = current_cframe->dead_tree;
    }

  if (current_cframe == NULL || current_cframe->ignoring)
    {
      while (! is_end_of_line[(unsigned char) *input_line_pointer])
	++input_line_pointer;

      if (current_cframe == NULL)
	return;
    }
  else
    {
      expressionS operand;
      int t;

      /* Leading whitespace is part of operand.  */
      FUNC1 ();

      FUNC8 (&operand);
      if (operand.X_op != O_constant)
	FUNC4 (FUNC2("non-constant expression in \".elseif\" statement"));

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

      current_cframe->ignoring = current_cframe->dead_tree || ! t;
    }

  if (FUNC0 ()
      && (current_cframe->previous_cframe == NULL
	  || ! current_cframe->previous_cframe->ignoring))
    {
      if (! current_cframe->ignoring)
	FUNC9 (1);
      else
	FUNC9 (2);
    }

  FUNC7 ();
}