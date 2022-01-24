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
struct data {char const* template; int code_number; int n_alternatives; int /*<<< orphan*/  output_format; int /*<<< orphan*/  lineno; } ;

/* Variables and functions */
 int /*<<< orphan*/  INSN_OUTPUT_FORMAT_FUNCTION ; 
 int /*<<< orphan*/  INSN_OUTPUT_FORMAT_MULTI ; 
 int /*<<< orphan*/  INSN_OUTPUT_FORMAT_SINGLE ; 
 scalar_t__ FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (char const) ; 
 int have_error ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char const) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 

__attribute__((used)) static void
FUNC7 (struct data *d, const char *template)
{
  const char *cp;
  int i;

  /* Templates starting with * contain straight code to be run.  */
  if (template[0] == '*')
    {
      d->template = 0;
      d->output_format = INSN_OUTPUT_FORMAT_FUNCTION;

      FUNC6 ("\nstatic const char *");
      FUNC4 ("output_%d (rtx *operands ATTRIBUTE_UNUSED, rtx insn ATTRIBUTE_UNUSED)\n",
	      d->code_number);
      FUNC6 ("{");
      FUNC3 (template);
      FUNC6 (template + 1);
      FUNC6 ("}");
    }

  /* If the assembler code template starts with a @ it is a newline-separated
     list of assembler code templates, one for each alternative.  */
  else if (template[0] == '@')
    {
      d->template = 0;
      d->output_format = INSN_OUTPUT_FORMAT_MULTI;

      FUNC4 ("\nstatic const char * const output_%d[] = {\n", d->code_number);

      for (i = 0, cp = &template[1]; *cp; )
	{
	  const char *ep, *sp;

	  while (FUNC0 (*cp))
	    cp++;

	  FUNC4 ("  \"");

	  for (ep = sp = cp; !FUNC1 (*ep) && *ep != '\0'; ++ep)
	    if (!FUNC0 (*ep))
	      sp = ep + 1;

	  if (sp != ep)
	    FUNC2 (d->lineno,
			       "trailing whitespace in output template");

	  while (cp < sp)
	    {
	      FUNC5 (*cp);
	      cp++;
	    }

	  FUNC4 ("\",\n");
	  i++;
	}
      if (i == 1)
	FUNC2 (d->lineno,
			   "'@' is redundant for output template with single alternative");
      if (i != d->n_alternatives)
	{
	  FUNC2 (d->lineno,
			     "wrong number of alternatives in the output template");
	  have_error = 1;
	}

      FUNC4 ("};\n");
    }
  else
    {
      d->template = template;
      d->output_format = INSN_OUTPUT_FORMAT_SINGLE;
    }
}