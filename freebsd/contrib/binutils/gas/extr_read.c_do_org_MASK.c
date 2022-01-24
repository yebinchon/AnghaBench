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
typedef  int /*<<< orphan*/  symbolS ;
typedef  scalar_t__ segT ;
typedef  int /*<<< orphan*/  relax_substateT ;
typedef  int offsetT ;
struct TYPE_4__ {scalar_t__ X_op; int X_add_number; int /*<<< orphan*/ * X_add_symbol; } ;
typedef  TYPE_1__ expressionS ;

/* Variables and functions */
 int OCTETS_PER_BYTE ; 
 scalar_t__ O_constant ; 
 scalar_t__ O_symbol ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int abs_section_offset ; 
 scalar_t__ absolute_section ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*) ; 
 scalar_t__ now_seg ; 
 int /*<<< orphan*/  rs_org ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

__attribute__((used)) static void
FUNC6 (segT segment, expressionS *exp, int fill)
{
  if (segment != now_seg && segment != absolute_section)
    FUNC1 (FUNC0("invalid segment \"%s\""), FUNC5 (segment));

  if (now_seg == absolute_section)
    {
      if (fill != 0)
	FUNC2 (FUNC0("ignoring fill value in absolute section"));
      if (exp->X_op != O_constant)
	{
	  FUNC1 (FUNC0("only constant offsets supported in absolute section"));
	  exp->X_add_number = 0;
	}
      abs_section_offset = exp->X_add_number;
    }
  else
    {
      char *p;
      symbolS *sym = exp->X_add_symbol;
      offsetT off = exp->X_add_number * OCTETS_PER_BYTE;

      if (exp->X_op != O_constant && exp->X_op != O_symbol)
	{
	  /* Handle complex expressions.  */
	  sym = FUNC4 (exp);
	  off = 0;
	}

      p = FUNC3 (rs_org, 1, 1, (relax_substateT) 0, sym, off, (char *) 0);
      *p = fill;
    }
}