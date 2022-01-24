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
struct data {char* name; char* filename; int lineno; int output_format; char* template; int code_number; int operand_number; int n_operands; int n_dups; int n_alternatives; struct data* next; } ;

/* Variables and functions */
#define  INSN_OUTPUT_FORMAT_FUNCTION 131 
#define  INSN_OUTPUT_FORMAT_MULTI 130 
#define  INSN_OUTPUT_FORMAT_NONE 129 
#define  INSN_OUTPUT_FORMAT_SINGLE 128 
 int /*<<< orphan*/  FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct data* idata ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char const) ; 

__attribute__((used)) static void
FUNC4 (void)
{
  struct data *d;
  int name_offset = 0;
  int next_name_offset;
  const char * last_name = 0;
  const char * next_name = 0;
  struct data *n;

  for (n = idata, next_name_offset = 1; n; n = n->next, next_name_offset++)
    if (n->name)
      {
	next_name = n->name;
	break;
      }

  FUNC2 ("#if GCC_VERSION >= 2007\n__extension__\n#endif\n");
  FUNC2 ("\nconst struct insn_data insn_data[] = \n{\n");

  for (d = idata; d; d = d->next)
    {
      FUNC2 ("  /* %s:%d */\n", d->filename, d->lineno);
      FUNC2 ("  {\n");

      if (d->name)
	{
	  FUNC2 ("    \"%s\",\n", d->name);
	  name_offset = 0;
	  last_name = d->name;
	  next_name = 0;
	  for (n = d->next, next_name_offset = 1; n;
	       n = n->next, next_name_offset++)
	    {
	      if (n->name)
		{
		  next_name = n->name;
		  break;
		}
	    }
	}
      else
	{
	  name_offset++;
	  if (next_name && (last_name == 0
			    || name_offset > next_name_offset / 2))
	    FUNC2 ("    \"%s-%d\",\n", next_name,
		    next_name_offset - name_offset);
	  else
	    FUNC2 ("    \"%s+%d\",\n", last_name, name_offset);
	}

      switch (d->output_format)
	{
	case INSN_OUTPUT_FORMAT_NONE:
	  FUNC2 ("#if HAVE_DESIGNATED_INITIALIZERS\n");
	  FUNC2 ("    { 0 },\n");
	  FUNC2 ("#else\n");
	  FUNC2 ("    { 0, 0, 0 },\n");
	  FUNC2 ("#endif\n");
	  break;
	case INSN_OUTPUT_FORMAT_SINGLE:
	  {
	    const char *p = d->template;
	    char prev = 0;

	    FUNC2 ("#if HAVE_DESIGNATED_INITIALIZERS\n");
	    FUNC2 ("    { .single =\n");
	    FUNC2 ("#else\n");
	    FUNC2 ("    {\n");
	    FUNC2 ("#endif\n");
	    FUNC2 ("    \"");
	    while (*p)
	      {
		if (FUNC0 (*p) && prev != '\\')
		  {
		    /* Preserve two consecutive \n's or \r's, but treat \r\n
		       as a single newline.  */
		    if (*p == '\n' && prev != '\r')
		      FUNC2 ("\\n\\\n");
		  }
		else
		  FUNC3 (*p);
		prev = *p;
		++p;
	      }
	    FUNC2 ("\",\n");
	    FUNC2 ("#if HAVE_DESIGNATED_INITIALIZERS\n");
	    FUNC2 ("    },\n");
	    FUNC2 ("#else\n");
	    FUNC2 ("    0, 0 },\n");
	    FUNC2 ("#endif\n");
	  }
	  break;
	case INSN_OUTPUT_FORMAT_MULTI:
	  FUNC2 ("#if HAVE_DESIGNATED_INITIALIZERS\n");
	  FUNC2 ("    { .multi = output_%d },\n", d->code_number);
	  FUNC2 ("#else\n");
	  FUNC2 ("    { 0, output_%d, 0 },\n", d->code_number);
	  FUNC2 ("#endif\n");
	  break;
	case INSN_OUTPUT_FORMAT_FUNCTION:
	  FUNC2 ("#if HAVE_DESIGNATED_INITIALIZERS\n");
	  FUNC2 ("    { .function = output_%d },\n", d->code_number);
	  FUNC2 ("#else\n");
	  FUNC2 ("    { 0, 0, output_%d },\n", d->code_number);
	  FUNC2 ("#endif\n");
	  break;
	default:
	  FUNC1 ();
	}

      if (d->name && d->name[0] != '*')
	FUNC2 ("    (insn_gen_fn) gen_%s,\n", d->name);
      else
	FUNC2 ("    0,\n");

      FUNC2 ("    &operand_data[%d],\n", d->operand_number);
      FUNC2 ("    %d,\n", d->n_operands);
      FUNC2 ("    %d,\n", d->n_dups);
      FUNC2 ("    %d,\n", d->n_alternatives);
      FUNC2 ("    %d\n", d->output_format);

      FUNC2("  },\n");
    }
  FUNC2 ("};\n\n\n");
}