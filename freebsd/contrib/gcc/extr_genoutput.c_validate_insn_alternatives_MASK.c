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
struct data {int n_operands; int n_alternatives; int /*<<< orphan*/  lineno; TYPE_1__* operand; } ;
struct TYPE_2__ {int n_alternatives; char* constraint; } ;

/* Variables and functions */
 int FUNC0 (char,char const*) ; 
 scalar_t__ FUNC1 (char const) ; 
 scalar_t__ FUNC2 (char) ; 
 int have_error ; 
 char* indep_constraints ; 
 int FUNC3 (char const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const,...) ; 
 scalar_t__ FUNC5 (char*,char const) ; 

__attribute__((used)) static void
FUNC6 (struct data *d)
{
  int n = 0, start;

  /* Make sure all the operands have the same number of alternatives
     in their constraints.  Let N be that number.  */
  for (start = 0; start < d->n_operands; start++)
    if (d->operand[start].n_alternatives > 0)
      {
	int len, i;
	const char *p;
	char c;
	int which_alternative = 0;
	int alternative_count_unsure = 0;

	for (p = d->operand[start].constraint; (c = *p); p += len)
	  {
#ifdef USE_MD_CONSTRAINTS
	    if (ISSPACE (c) || strchr (indep_constraints, c))
	      len = 1;
	    else if (ISDIGIT (c))
	      {
		const char *q = p;
		do
		  q++;
		while (ISDIGIT (*q));
		len = q - p;
	      }
	    else
	      len = mdep_constraint_len (p, d->lineno, start);
#else
	    len = FUNC0 (c, p);

	    if (len < 1 || (len > 1 && FUNC5 (",#*+=&%!0123456789", c)))
	      {
		FUNC4 (d->lineno,
				   "invalid length %d for char '%c' in alternative %d of operand %d",
				    len, c, which_alternative, start);
		len = 1;
		have_error = 1;
	      }
#endif

	    if (c == ',')
	      {
	        which_alternative++;
		continue;
	      }

	    for (i = 1; i < len; i++)
	      if (p[i] == '\0')
		{
		  FUNC4 (d->lineno,
				     "NUL in alternative %d of operand %d",
				     which_alternative, start);
		  alternative_count_unsure = 1;
		  break;
		}
	      else if (FUNC5 (",#*", p[i]))
		{
		  FUNC4 (d->lineno,
				     "'%c' in alternative %d of operand %d",
				     p[i], which_alternative, start);
		  alternative_count_unsure = 1;
		}
	  }
	if (alternative_count_unsure)
	  have_error = 1;
	else if (n == 0)
	  n = d->operand[start].n_alternatives;
	else if (n != d->operand[start].n_alternatives)
	  {
	    FUNC4 (d->lineno,
			       "wrong number of alternatives in operand %d",
			       start);
	    have_error = 1;
	  }
      }

  /* Record the insn's overall number of alternatives.  */
  d->n_alternatives = n;
}