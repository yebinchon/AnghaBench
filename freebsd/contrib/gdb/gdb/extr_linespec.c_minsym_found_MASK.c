#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct symtabs_and_lines {int nelts; struct symtab_and_line* sals; } ;
struct symtab_and_line {int /*<<< orphan*/  pc; int /*<<< orphan*/  section; } ;
struct minimal_symbol {int dummy; } ;
struct bfd_section {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNCTION_START_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct minimal_symbol*) ; 
 int /*<<< orphan*/  FUNC2 (struct minimal_symbol*) ; 
 struct symtab_and_line FUNC3 (int /*<<< orphan*/ ,struct bfd_section*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static struct symtabs_and_lines
FUNC5 (int funfirstline, struct minimal_symbol *msymbol)
{
  struct symtabs_and_lines values;

  values.sals = (struct symtab_and_line *)
    FUNC4 (sizeof (struct symtab_and_line));
  values.sals[0] = FUNC3 (FUNC2 (msymbol),
				      (struct bfd_section *) 0, 0);
  values.sals[0].section = FUNC1 (msymbol);
  if (funfirstline)
    {
      values.sals[0].pc += FUNCTION_START_OFFSET;
      values.sals[0].pc = FUNC0 (values.sals[0].pc);
    }
  values.nelts = 1;
  return values;
}