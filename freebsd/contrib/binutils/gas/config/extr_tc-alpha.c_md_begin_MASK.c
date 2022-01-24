#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  subsegT ;
typedef  int /*<<< orphan*/  segT ;
struct TYPE_4__ {scalar_t__ X_op; } ;
typedef  TYPE_1__ expressionS ;
struct TYPE_6__ {char* name; } ;
struct TYPE_5__ {char* name; } ;

/* Variables and functions */
 scalar_t__ ECOFF_DEBUGGING ; 
 scalar_t__ O_max ; 
 int SEC_HAS_CONTENTS ; 
 int SEC_READONLY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 void* alpha_gp_symbol ; 
 int /*<<< orphan*/  alpha_link_section ; 
 int /*<<< orphan*/  alpha_link_symbol ; 
 int /*<<< orphan*/  alpha_lita_section ; 
 int /*<<< orphan*/  alpha_lita_symbol ; 
 void* alpha_literal_hash ; 
 void* alpha_macro_hash ; 
 TYPE_3__* alpha_macros ; 
 unsigned int alpha_num_macros ; 
 unsigned int alpha_num_opcodes ; 
 void* alpha_opcode_hash ; 
 TYPE_2__* alpha_opcodes ; 
 void** alpha_register_table ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  g_switch_value ; 
 char* FUNC7 (void*,char const*,void*) ; 
 void* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,int) ; 
 int /*<<< orphan*/  reg_section ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,unsigned int) ; 
 int /*<<< orphan*/  stdoutput ; 
 char* FUNC11 (char const*,char) ; 
 int /*<<< orphan*/  FUNC12 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC14 (char const*) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC17 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  text_section ; 
 char* FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zero_address_frag ; 

void
FUNC19 (void)
{
  unsigned int i;

  /* Verify that X_op field is wide enough.  */
  {
    expressionS e;

    e.X_op = O_max;
    FUNC2 (e.X_op == O_max);
  }

  /* Create the opcode hash table.  */
  alpha_opcode_hash = FUNC8 ();

  for (i = 0; i < alpha_num_opcodes;)
    {
      const char *name, *retval, *slash;

      name = alpha_opcodes[i].name;
      retval = FUNC7 (alpha_opcode_hash, name, (void *) &alpha_opcodes[i]);
      if (retval)
	FUNC1 (FUNC0("internal error: can't hash opcode `%s': %s"),
		  name, retval);

      /* Some opcodes include modifiers of various sorts with a "/mod"
	 syntax, like the architecture manual suggests.  However, for
	 use with gcc at least, we also need access to those same opcodes
	 without the "/".  */

      if ((slash = FUNC11 (name, '/')) != NULL)
	{
	  char *p = FUNC18 (FUNC14 (name));

	  FUNC9 (p, name, slash - name);
	  FUNC13 (p + (slash - name), slash + 1);

	  (void) FUNC7 (alpha_opcode_hash, p, (void *) &alpha_opcodes[i]);
	  /* Ignore failures -- the opcode table does duplicate some
	     variants in different forms, like "hw_stq" and "hw_st/q".  */
	}

      while (++i < alpha_num_opcodes
	     && (alpha_opcodes[i].name == name
		 || !FUNC12 (alpha_opcodes[i].name, name)))
	continue;
    }

  /* Create the macro hash table.  */
  alpha_macro_hash = FUNC8 ();

  for (i = 0; i < alpha_num_macros;)
    {
      const char *name, *retval;

      name = alpha_macros[i].name;
      retval = FUNC7 (alpha_macro_hash, name, (void *) &alpha_macros[i]);
      if (retval)
	FUNC1 (FUNC0("internal error: can't hash macro `%s': %s"),
		  name, retval);

      while (++i < alpha_num_macros
	     && (alpha_macros[i].name == name
		 || !FUNC12 (alpha_macros[i].name, name)))
	continue;
    }

  /* Construct symbols for each of the registers.  */
  for (i = 0; i < 32; ++i)
    {
      char name[4];

      FUNC10 (name, "$%d", i);
      alpha_register_table[i] = FUNC17 (name, reg_section, i,
					       &zero_address_frag);
    }

  for (; i < 64; ++i)
    {
      char name[5];

      FUNC10 (name, "$f%d", i - 32);
      alpha_register_table[i] = FUNC17 (name, reg_section, i,
					       &zero_address_frag);
    }

  /* Create the special symbols and sections we'll be using.  */

  /* So .sbss will get used for tiny objects.  */
  FUNC3 (stdoutput, g_switch_value);

#ifdef OBJ_ECOFF
  create_literal_section (".lita", &alpha_lita_section, &alpha_lita_symbol);

  /* For handling the GP, create a symbol that won't be output in the
     symbol table.  We'll edit it out of relocs later.  */
  alpha_gp_symbol = symbol_create ("<GP value>", alpha_lita_section, 0x8000,
				   &zero_address_frag);
#endif

#ifdef OBJ_EVAX
  create_literal_section (".link", &alpha_link_section, &alpha_link_symbol);
#endif

#ifdef OBJ_ELF
  if (ECOFF_DEBUGGING)
    {
      segT sec = subseg_new (".mdebug", (subsegT) 0);
      bfd_set_section_flags (stdoutput, sec, SEC_HAS_CONTENTS | SEC_READONLY);
      bfd_set_section_alignment (stdoutput, sec, 3);
    }
#endif

  /* Create literal lookup hash table.  */
  alpha_literal_hash = FUNC8 ();

  FUNC16 (text_section, 0);
}