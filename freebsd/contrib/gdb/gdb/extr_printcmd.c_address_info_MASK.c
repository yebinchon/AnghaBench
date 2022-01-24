#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct symtab {int dummy; } ;
struct symbol {int dummy; } ;
typedef  struct symbol minimal_symbol ;
struct TYPE_7__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ asection ;
struct TYPE_9__ {int /*<<< orphan*/  (* describe_location ) (struct symbol*,int /*<<< orphan*/ ) ;} ;
struct TYPE_8__ {scalar_t__ la_language; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (struct symbol*) ; 
 int /*<<< orphan*/  DMGL_ANSI ; 
#define  LOC_ARG 148 
#define  LOC_BASEREG 147 
#define  LOC_BASEREG_ARG 146 
#define  LOC_BLOCK 145 
#define  LOC_COMPUTED 144 
#define  LOC_COMPUTED_ARG 143 
#define  LOC_CONST 142 
#define  LOC_CONST_BYTES 141 
#define  LOC_HP_THREAD_LOCAL_STATIC 140 
#define  LOC_INDIRECT 139 
#define  LOC_LABEL 138 
#define  LOC_LOCAL 137 
#define  LOC_LOCAL_ARG 136 
#define  LOC_OPTIMIZED_OUT 135 
#define  LOC_REF_ARG 134 
#define  LOC_REGISTER 133 
#define  LOC_REGPARM 132 
#define  LOC_REGPARM_ADDR 131 
#define  LOC_STATIC 130 
#define  LOC_TYPEDEF 129 
#define  LOC_UNRESOLVED 128 
 int /*<<< orphan*/  FUNC2 (long) ; 
 long FUNC3 (struct symbol*) ; 
 TYPE_1__* FUNC4 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC5 (struct symbol*) ; 
 int FUNC6 (struct symbol*) ; 
 TYPE_5__* FUNC7 (struct symbol*) ; 
 long FUNC8 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC9 (struct symbol*) ; 
 int /*<<< orphan*/  VAR_DOMAIN ; 
 TYPE_4__* current_language ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdout ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ language_objc ; 
 struct symbol* FUNC13 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct symbol* FUNC14 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,struct symtab**) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*,...) ; 
 scalar_t__ FUNC18 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (struct symbol*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC20 (char *exp, int from_tty)
{
  struct symbol *sym;
  struct minimal_symbol *msymbol;
  long val;
  long basereg;
  asection *section;
  CORE_ADDR load_addr;
  int is_a_field_of_this;	/* C++: lookup_symbol sets this to nonzero
				   if exp is a field of `this'. */

  if (exp == 0)
    FUNC10 ("Argument required.");

  sym = FUNC14 (exp, FUNC12 (0), VAR_DOMAIN,
		       &is_a_field_of_this, (struct symtab **) NULL);
  if (sym == NULL)
    {
      if (is_a_field_of_this)
	{
	  FUNC17 ("Symbol \"");
	  FUNC11 (gdb_stdout, exp,
				   current_language->la_language, DMGL_ANSI);
	  FUNC17 ("\" is a field of the local class variable ");
	  if (current_language->la_language == language_objc)
	    FUNC17 ("`self'\n");	/* ObjC equivalent of "this" */
	  else
	    FUNC17 ("`this'\n");
	  return;
	}

      msymbol = FUNC13 (exp, NULL, NULL);

      if (msymbol != NULL)
	{
	  load_addr = FUNC9 (msymbol);

	  FUNC17 ("Symbol \"");
	  FUNC11 (gdb_stdout, exp,
				   current_language->la_language, DMGL_ANSI);
	  FUNC17 ("\" is at ");
	  FUNC16 (load_addr, 1, gdb_stdout);
	  FUNC17 (" in a file compiled without debugging");
	  section = FUNC4 (msymbol);
	  if (FUNC18 (section))
	    {
	      load_addr = FUNC15 (load_addr, section);
	      FUNC17 (",\n -- loaded at ");
	      FUNC16 (load_addr, 1, gdb_stdout);
	      FUNC17 (" in overlay section %s", section->name);
	    }
	  FUNC17 (".\n");
	}
      else
	FUNC10 ("No symbol \"%s\" in current context.", exp);
      return;
    }

  FUNC17 ("Symbol \"");
  FUNC11 (gdb_stdout, FUNC1 (sym),
			   current_language->la_language, DMGL_ANSI);
  FUNC17 ("\" is ");
  val = FUNC8 (sym);
  basereg = FUNC3 (sym);
  section = FUNC4 (sym);

  switch (FUNC6 (sym))
    {
    case LOC_CONST:
    case LOC_CONST_BYTES:
      FUNC17 ("constant");
      break;

    case LOC_LABEL:
      FUNC17 ("a label at address ");
      FUNC16 (load_addr = FUNC9 (sym),
			     1, gdb_stdout);
      if (FUNC18 (section))
	{
	  load_addr = FUNC15 (load_addr, section);
	  FUNC17 (",\n -- loaded at ");
	  FUNC16 (load_addr, 1, gdb_stdout);
	  FUNC17 (" in overlay section %s", section->name);
	}
      break;

    case LOC_COMPUTED:
    case LOC_COMPUTED_ARG:
      /* FIXME: cagney/2004-01-26: It should be possible to
	 unconditionally call the SYMBOL_OPS method when available.
	 Unfortunately DWARF 2 stores the frame-base (instead of the
	 function) location in a function's symbol.  Oops!  For the
	 moment enable this when/where applicable.  */
      FUNC7 (sym)->describe_location (sym, gdb_stdout);
      break;

    case LOC_REGISTER:
      FUNC17 ("a variable in register %s", FUNC2 (val));
      break;

    case LOC_STATIC:
      FUNC17 ("static storage at address ");
      FUNC16 (load_addr = FUNC9 (sym),
			     1, gdb_stdout);
      if (FUNC18 (section))
	{
	  load_addr = FUNC15 (load_addr, section);
	  FUNC17 (",\n -- loaded at ");
	  FUNC16 (load_addr, 1, gdb_stdout);
	  FUNC17 (" in overlay section %s", section->name);
	}
      break;

    case LOC_INDIRECT:
      FUNC17 ("external global (indirect addressing), at address *(");
      FUNC16 (load_addr = FUNC9 (sym),
			     1, gdb_stdout);
      FUNC17 (")");
      if (FUNC18 (section))
	{
	  load_addr = FUNC15 (load_addr, section);
	  FUNC17 (",\n -- loaded at ");
	  FUNC16 (load_addr, 1, gdb_stdout);
	  FUNC17 (" in overlay section %s", section->name);
	}
      break;

    case LOC_REGPARM:
      FUNC17 ("an argument in register %s", FUNC2 (val));
      break;

    case LOC_REGPARM_ADDR:
      FUNC17 ("address of an argument in register %s", FUNC2 (val));
      break;

    case LOC_ARG:
      FUNC17 ("an argument at offset %ld", val);
      break;

    case LOC_LOCAL_ARG:
      FUNC17 ("an argument at frame offset %ld", val);
      break;

    case LOC_LOCAL:
      FUNC17 ("a local variable at frame offset %ld", val);
      break;

    case LOC_REF_ARG:
      FUNC17 ("a reference argument at offset %ld", val);
      break;

    case LOC_BASEREG:
      FUNC17 ("a variable at offset %ld from register %s",
		       val, FUNC2 (basereg));
      break;

    case LOC_BASEREG_ARG:
      FUNC17 ("an argument at offset %ld from register %s",
		       val, FUNC2 (basereg));
      break;

    case LOC_TYPEDEF:
      FUNC17 ("a typedef");
      break;

    case LOC_BLOCK:
      FUNC17 ("a function at address ");
      FUNC16 (load_addr = FUNC0 (FUNC5 (sym)),
			     1, gdb_stdout);
      if (FUNC18 (section))
	{
	  load_addr = FUNC15 (load_addr, section);
	  FUNC17 (",\n -- loaded at ");
	  FUNC16 (load_addr, 1, gdb_stdout);
	  FUNC17 (" in overlay section %s", section->name);
	}
      break;

    case LOC_UNRESOLVED:
      {
	struct minimal_symbol *msym;

	msym = FUNC13 (FUNC1 (sym), NULL, NULL);
	if (msym == NULL)
	  FUNC17 ("unresolved");
	else
	  {
	    section = FUNC4 (msym);
	    FUNC17 ("static storage at address ");
	    FUNC16 (load_addr = FUNC9 (msym),
				   1, gdb_stdout);
	    if (FUNC18 (section))
	      {
		load_addr = FUNC15 (load_addr, section);
		FUNC17 (",\n -- loaded at ");
		FUNC16 (load_addr, 1, gdb_stdout);
		FUNC17 (" in overlay section %s", section->name);
	      }
	  }
      }
      break;

    case LOC_HP_THREAD_LOCAL_STATIC:
      FUNC17 (
			"a thread-local variable at offset %ld from the thread base register %s",
			val, FUNC2 (basereg));
      break;

    case LOC_OPTIMIZED_OUT:
      FUNC17 ("optimized out");
      break;

    default:
      FUNC17 ("of unknown (botched) type");
      break;
    }
  FUNC17 (".\n");
}