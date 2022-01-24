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
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int,int) ; 
 char* max_id_len ; 
 int FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC8 (char const*,char*) ; 

__attribute__((used)) static void
FUNC9 (rtx insn)
{
  int num = FUNC4 (insn);
  int i;
  const char *name = FUNC0 (insn, 0);
  int truth = FUNC3 (FUNC0 (insn, 2));

  /* Many md files don't refer to the last two operands passed to the
     call patterns.  This means their generator functions will be two
     arguments too short.  Instead of changing every md file to touch
     those operands, we wrap the prototypes in macros that take the
     correct number of arguments.  */
  if (name[0] == 'c' || name[0] == 's')
    {
      if (!FUNC8 (name, "call")
	  || !FUNC8 (name, "call_pop")
	  || !FUNC8 (name, "sibcall")
	  || !FUNC8 (name, "sibcall_pop"))
	FUNC2 (name, num, 4);
      else if (!FUNC8 (name, "call_value")
	       || !FUNC8 (name, "call_value_pop")
	       || !FUNC8 (name, "sibcall_value")
	       || !FUNC8 (name, "sibcall_value_pop"))
	FUNC2 (name, num, 5);
    }

  if (truth != 0)
    FUNC5 ("extern rtx        gen_%-*s (", max_id_len, name);
  else
    FUNC5 ("static inline rtx gen_%-*s (", max_id_len, name);

  if (num == 0)
    FUNC1 ("void", stdout);
  else
    {
      for (i = 1; i < num; i++)
	FUNC1 ("rtx, ", stdout);

      FUNC1 ("rtx", stdout);
    }

  FUNC7 (");");

  /* Some back ends want to take the address of generator functions,
     so we cannot simply use #define for these dummy definitions.  */
  if (truth == 0)
    {
      FUNC5 ("static inline rtx\ngen_%s", name);
      if (num > 0)
	{
	  FUNC6 ('(');
	  for (i = 0; i < num-1; i++)
	    FUNC5 ("rtx ARG_UNUSED (%c), ", 'a' + i);
	  FUNC5 ("rtx ARG_UNUSED (%c))\n", 'a' + i);
	}
      else
	FUNC7 ("(void)");
      FUNC7 ("{\n  return 0;\n}");
    }

}