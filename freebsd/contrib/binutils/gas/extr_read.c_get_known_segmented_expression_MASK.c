#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ segT ;
struct TYPE_4__ {scalar_t__ X_add_number; int /*<<< orphan*/  X_op; int /*<<< orphan*/ * X_add_symbol; } ;
typedef  TYPE_1__ expressionS ;

/* Variables and functions */
 int /*<<< orphan*/  O_constant ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ absolute_section ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,...) ; 
 scalar_t__ expr_section ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ undefined_section ; 

__attribute__((used)) static segT
FUNC7 (register expressionS *expP)
{
  register segT retval;

  if ((retval = FUNC5 (expP)) == undefined_section)
    {
      /* There is no easy way to extract the undefined symbol from the
	 expression.  */
      if (expP->X_add_symbol != NULL
	  && FUNC2 (expP->X_add_symbol) != expr_section)
	FUNC4 (FUNC3("symbol \"%s\" undefined; zero assumed"),
		 FUNC1 (expP->X_add_symbol));
      else
	FUNC4 (FUNC3("some symbol undefined; zero assumed"));
      retval = absolute_section;
      expP->X_op = O_constant;
      expP->X_add_number = 0;
    }
  FUNC6 (retval == absolute_section || FUNC0 (retval));
  return (retval);
}