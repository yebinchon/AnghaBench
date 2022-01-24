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
struct TYPE_3__ {int X_add_number; int /*<<< orphan*/  X_op; } ;
typedef  TYPE_1__ expressionS ;

/* Variables and functions */
 int ERROR_EXPONENT_OVERFLOW ; 
 int /*<<< orphan*/  EXP_CHARS ; 
 int /*<<< orphan*/  O_big ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,...) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  generic_floating_point_number ; 
 int /*<<< orphan*/  input_line_pointer ; 

__attribute__((used)) static void
FUNC3 (expressionS *expressionP)
{
  /* input_line_pointer -> floating-point constant.  */
  int error_code;

  error_code = FUNC2 (&input_line_pointer, ".", EXP_CHARS,
			     &generic_floating_point_number);

  if (error_code)
    {
      if (error_code == ERROR_EXPONENT_OVERFLOW)
	{
	  FUNC1 (FUNC0("bad floating-point constant: exponent overflow"));
	}
      else
	{
	  FUNC1 (FUNC0("bad floating-point constant: unknown error code=%d"),
		  error_code);
	}
    }
  expressionP->X_op = O_big;
  /* input_line_pointer -> just after constant, which may point to
     whitespace.  */
  expressionP->X_add_number = -1;
}