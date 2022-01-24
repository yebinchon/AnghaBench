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
typedef  scalar_t__ valueT ;
typedef  int /*<<< orphan*/  symbolS ;
typedef  int /*<<< orphan*/  reg_entry ;
struct TYPE_3__ {scalar_t__ X_op; scalar_t__ X_add_number; } ;
typedef  TYPE_1__ expressionS ;

/* Variables and functions */
 scalar_t__ O_register ; 
 char REGISTER_PREFIX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ allow_naked_reg ; 
 char FUNC1 () ; 
 int /*<<< orphan*/ * i386_regtab ; 
 scalar_t__ i386_regtab_size ; 
 char* input_line_pointer ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char**) ; 
 scalar_t__ reg_section ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static const reg_entry *
FUNC6 (char *reg_string, char **end_op)
{
  const reg_entry *r;

  if (*reg_string == REGISTER_PREFIX || allow_naked_reg)
    r = FUNC3 (reg_string, end_op);
  else
    r = NULL;
  if (!r)
    {
      char *save = input_line_pointer;
      char c;
      symbolS *symbolP;

      input_line_pointer = reg_string;
      c = FUNC1 ();
      symbolP = FUNC4 (reg_string);
      if (symbolP && FUNC0 (symbolP) == reg_section)
	{
	  const expressionS *e = FUNC5 (symbolP);

	  FUNC2 (e->X_op == O_register);
	  FUNC2 (e->X_add_number >= 0
		&& (valueT) e->X_add_number < i386_regtab_size);
	  r = i386_regtab + e->X_add_number;
	  *end_op = input_line_pointer;
	}
      *input_line_pointer = c;
      input_line_pointer = save;
    }
  return r;
}