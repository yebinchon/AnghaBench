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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 unsigned int FUNC0 (char**) ; 
 scalar_t__ FUNC1 (char) ; 
 int MAX_OPERANDS ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char*,char*) ; 
 char* FUNC8 (char*,char**) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 char* FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int FUNC12 (char*) ; 
 char* FUNC13 (char*,char*) ; 

__attribute__((used)) static void
FUNC14 (void)
{
  FILE *fp = FUNC7 ("i386-opc.tbl", "r");
  char buf[2048];
  unsigned int i;
  char *str, *p, *last;
  char *name, *operands, *base_opcode, *extension_opcode;
  char *cpu_flags, *opcode_modifier, *operand_types [MAX_OPERANDS];

  if (fp == NULL)
    FUNC4 (FUNC2("can't find i386-opc.tbl for reading\n"));

  FUNC9 ("\n/* i386 opcode table.  */\n\n");
  FUNC9 ("const template i386_optab[] =\n{\n");

  while (!FUNC5 (fp))
    {
      if (FUNC6 (buf, sizeof (buf), fp) == NULL)
	break;

      p = FUNC10 (buf);

      /* Skip comments.  */
      str = FUNC13 (p, "//");
      if (str != NULL)
	str[0] = '\0';

      /* Remove trailing white spaces.  */
      FUNC11 (p);

      switch (p[0])
	{
	case '#':
	  FUNC9 ("%s\n", p);
	case '\0':
	  continue;
	  break;
	default:
	  break;
	}

      last = p + FUNC12 (p);

      /* Find name.  */
      name = FUNC8 (p, &str);

      if (str >= last)
	FUNC3 ();

      /* Find number of operands.  */
      operands = FUNC8 (str, &str);

      if (str >= last)
	FUNC3 ();

      /* Find base_opcode.  */
      base_opcode = FUNC8 (str, &str);

      if (str >= last)
	FUNC3 ();

      /* Find extension_opcode.  */
      extension_opcode = FUNC8 (str, &str);

      if (str >= last)
	FUNC3 ();

      /* Find cpu_flags.  */
      cpu_flags = FUNC8 (str, &str);

      if (str >= last)
	FUNC3 ();

      /* Find opcode_modifier.  */
      opcode_modifier = FUNC8 (str, &str);

      if (str >= last)
	FUNC3 ();

      /* Remove the first {.  */
      str = FUNC10 (str);
      if (*str != '{')
	FUNC3 ();
      str = FUNC10 (str + 1);

      i = FUNC12 (str);

      /* There are at least "X}".  */
      if (i < 2)
	FUNC3 ();

      /* Remove trailing white spaces and }. */
      do
	{
	  i--;
	  if (FUNC1 (str[i]) || str[i] == '}')
	    str[i] = '\0';
	  else
	    break;
	}
      while (i != 0);

      last = str + i;

      /* Find operand_types.  */
      for (i = 0; i < FUNC0 (operand_types); i++)
	{
	  if (str >= last)
	    {
	      operand_types [i] = NULL;
	      break;
	    }

	  operand_types [i] = FUNC8 (str, &str);
	  if (*operand_types[i] == '0')
	    {
	      if (i != 0)
		operand_types[i] = NULL;
	      break;
	    }
	}

      FUNC9 ("  { \"%s\", %s, %s, %s, %s,\n",
	      name, operands, base_opcode, extension_opcode,
	      cpu_flags);

      FUNC9 ("    %s,\n", opcode_modifier);

      FUNC9 ("    { ");

      for (i = 0; i < FUNC0 (operand_types); i++)
	{
	  if (operand_types[i] == NULL
	      || *operand_types[i] == '0')
	    {
	      if (i == 0)
		FUNC9 ("0");
	      break;
	    }

	  if (i != 0)
	    FUNC9 (",\n      ");

	  FUNC9 ("%s", operand_types[i]);
	}
      FUNC9 (" } },\n");
    }

  FUNC9 ("  { NULL, 0, 0, 0, 0, 0, { 0 } }\n");
  FUNC9 ("};\n");
}