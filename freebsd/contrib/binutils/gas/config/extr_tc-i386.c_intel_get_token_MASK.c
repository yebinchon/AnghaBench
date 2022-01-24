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
struct intel_token {char code; char* str; int /*<<< orphan*/  const* reg; } ;
typedef  int /*<<< orphan*/  reg_entry ;
struct TYPE_2__ {char* op_string; } ;

/* Variables and functions */
 char T_BYTE ; 
 char T_CONST ; 
 char T_DWORD ; 
 char T_FWORD ; 
 void* T_ID ; 
 char T_NIL ; 
 void* T_OFFSET ; 
 char T_PTR ; 
 char T_QWORD ; 
 char T_REG ; 
 void* T_SHL ; 
 char T_SHORT ; 
 void* T_SHR ; 
 char T_TBYTE ; 
 char T_WORD ; 
 char T_XMMWORD ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,...) ; 
 struct intel_token cur_token ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_1__ intel_parser ; 
 scalar_t__ FUNC3 (char) ; 
 scalar_t__ FUNC4 (char) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,size_t) ; 
 int /*<<< orphan*/ * FUNC6 (float*,char**) ; 
 struct intel_token prev_token ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 scalar_t__ FUNC9 (char*,char) ; 
 int FUNC10 (char*) ; 
 scalar_t__ FUNC11 (char*,char*,int) ; 
 scalar_t__ FUNC12 (int) ; 

__attribute__((used)) static void
FUNC13 (void)
{
  char *end_op;
  const reg_entry *reg;
  struct intel_token new_token;

  new_token.code = T_NIL;
  new_token.reg = NULL;
  new_token.str = NULL;

  /* Free the memory allocated to the previous token and move
     cur_token to prev_token.  */
  if (prev_token.str)
    FUNC2 (prev_token.str);

  prev_token = cur_token;

  /* Skip whitespace.  */
  while (FUNC4 (*intel_parser.op_string))
    intel_parser.op_string++;

  /* Return an empty token if we find nothing else on the line.  */
  if (*intel_parser.op_string == '\0')
    {
      cur_token = new_token;
      return;
    }

  /* The new token cannot be larger than the remainder of the operand
     string.  */
  new_token.str = (char *) FUNC12 (FUNC10 (intel_parser.op_string) + 1);
  new_token.str[0] = '\0';

  if (FUNC9 ("0123456789", *intel_parser.op_string))
    {
      char *p = new_token.str;
      char *q = intel_parser.op_string;
      new_token.code = T_CONST;

      /* Allow any kind of identifier char to encompass floating point and
	 hexadecimal numbers.  */
      while (FUNC3 (*q))
	*p++ = *q++;
      *p = '\0';

      /* Recognize special symbol names [0-9][bf].  */
      if (FUNC10 (intel_parser.op_string) == 2
	  && (intel_parser.op_string[1] == 'b'
	      || intel_parser.op_string[1] == 'f'))
	new_token.code = T_ID;
    }

  else if ((reg = FUNC6 (intel_parser.op_string, &end_op)) != NULL)
    {
      size_t len = end_op - intel_parser.op_string;

      new_token.code = T_REG;
      new_token.reg = reg;

      FUNC5 (new_token.str, intel_parser.op_string, len);
      new_token.str[len] = '\0';
    }

  else if (FUNC3 (*intel_parser.op_string))
    {
      char *p = new_token.str;
      char *q = intel_parser.op_string;

      /* A '.' or '$' followed by an identifier char is an identifier.
	 Otherwise, it's operator '.' followed by an expression.  */
      if ((*q == '.' || *q == '$') && !FUNC3 (*(q + 1)))
	{
	  new_token.code = '.';
	  new_token.str[0] = '.';
	  new_token.str[1] = '\0';
	}
      else
	{
	  while (FUNC3 (*q) || *q == '@')
	    *p++ = *q++;
	  *p = '\0';

	  if (FUNC7 (new_token.str, "NOT") == 0)
	    new_token.code = '~';

	  else if (FUNC7 (new_token.str, "MOD") == 0)
	    new_token.code = '%';

	  else if (FUNC7 (new_token.str, "AND") == 0)
	    new_token.code = '&';

	  else if (FUNC7 (new_token.str, "OR") == 0)
	    new_token.code = '|';

	  else if (FUNC7 (new_token.str, "XOR") == 0)
	    new_token.code = '^';

	  else if (FUNC7 (new_token.str, "SHL") == 0)
	    new_token.code = T_SHL;

	  else if (FUNC7 (new_token.str, "SHR") == 0)
	    new_token.code = T_SHR;

	  else if (FUNC7 (new_token.str, "BYTE") == 0)
	    new_token.code = T_BYTE;

	  else if (FUNC7 (new_token.str, "WORD") == 0)
	    new_token.code = T_WORD;

	  else if (FUNC7 (new_token.str, "DWORD") == 0)
	    new_token.code = T_DWORD;

	  else if (FUNC7 (new_token.str, "FWORD") == 0)
	    new_token.code = T_FWORD;

	  else if (FUNC7 (new_token.str, "QWORD") == 0)
	    new_token.code = T_QWORD;

	  else if (FUNC7 (new_token.str, "TBYTE") == 0
		   /* XXX remove (gcc still uses it) */
		   || FUNC7 (new_token.str, "XWORD") == 0)
	    new_token.code = T_TBYTE;

	  else if (FUNC7 (new_token.str, "XMMWORD") == 0
		   || FUNC7 (new_token.str, "OWORD") == 0)
	    new_token.code = T_XMMWORD;

	  else if (FUNC7 (new_token.str, "PTR") == 0)
	    new_token.code = T_PTR;

	  else if (FUNC7 (new_token.str, "SHORT") == 0)
	    new_token.code = T_SHORT;

	  else if (FUNC7 (new_token.str, "OFFSET") == 0)
	    {
	      new_token.code = T_OFFSET;

	      /* ??? This is not mentioned in the MASM grammar but gcc
		     makes use of it with -mintel-syntax.  OFFSET may be
		     followed by FLAT:  */
	      if (FUNC11 (q, " FLAT:", 6) == 0)
		FUNC8 (new_token.str, " FLAT:");
	    }

	  /* ??? This is not mentioned in the MASM grammar.  */
	  else if (FUNC7 (new_token.str, "FLAT") == 0)
	    {
	      new_token.code = T_OFFSET;
	      if (*q == ':')
		FUNC8 (new_token.str, ":");
	      else
		FUNC1 (FUNC0("`:' expected"));
	    }

	  else
	    new_token.code = T_ID;
	}
    }

  else if (FUNC9 ("+-/*%|&^:[]()~", *intel_parser.op_string))
    {
      new_token.code = *intel_parser.op_string;
      new_token.str[0] = *intel_parser.op_string;
      new_token.str[1] = '\0';
    }

  else if (FUNC9 ("<>", *intel_parser.op_string)
	   && *intel_parser.op_string == *(intel_parser.op_string + 1))
    {
      new_token.code = *intel_parser.op_string == '<' ? T_SHL : T_SHR;
      new_token.str[0] = *intel_parser.op_string;
      new_token.str[1] = *intel_parser.op_string;
      new_token.str[2] = '\0';
    }

  else
    FUNC1 (FUNC0("Unrecognized token `%s'"), intel_parser.op_string);

  intel_parser.op_string += FUNC10 (new_token.str);
  cur_token = new_token;
}