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
struct TYPE_3__ {int X_op; int X_add_number; } ;
typedef  TYPE_1__ expressionS ;

/* Variables and functions */
#define  O_constant 129 
#define  O_register 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 char FUNC4 () ; 
 char* input_line_pointer ; 
 scalar_t__ FUNC5 (char) ; 
 int FUNC6 (char*) ; 

__attribute__((used)) static unsigned
FUNC7 (void)
{
  int regno;
  expressionS exp;

#ifdef tc_regname_to_dw2regnum
  SKIP_WHITESPACE ();
  if (is_name_beginner (*input_line_pointer)
      || (*input_line_pointer == '%'
	  && is_name_beginner (*++input_line_pointer)))
    {
      char *name, c;

      name = input_line_pointer;
      c = get_symbol_end ();

      if ((regno = tc_regname_to_dw2regnum (name)) < 0)
	{
	  as_bad (_("bad register expression"));
	  regno = 0;
	}

      *input_line_pointer = c;
      return regno;
    }
#endif

  FUNC3 (&exp);
  switch (exp.X_op)
    {
    case O_register:
    case O_constant:
      regno = exp.X_add_number;
      break;

    default:
      FUNC2 (FUNC1("bad register expression"));
      regno = 0;
      break;
    }

  return regno;
}