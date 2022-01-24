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
struct operand_data {char* predicate; char* constraint; int strict_low; int eliminable; int /*<<< orphan*/  mode; struct operand_data* next; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 struct operand_data* odata ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void
FUNC2 (void)
{
  struct operand_data *d;

  FUNC1 ("\nstatic const struct insn_operand_data operand_data[] = \n{\n");

  for (d = odata; d; d = d->next)
    {
      FUNC1 ("  {\n");

      FUNC1 ("    %s,\n",
	      d->predicate && d->predicate[0] ? d->predicate : "0");

      FUNC1 ("    \"%s\",\n", d->constraint ? d->constraint : "");

      FUNC1 ("    %smode,\n", FUNC0 (d->mode));

      FUNC1 ("    %d,\n", d->strict_low);

      FUNC1 ("    %d\n", d->eliminable);

      FUNC1("  },\n");
    }
  FUNC1("};\n\n\n");
}