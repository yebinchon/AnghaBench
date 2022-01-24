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
typedef  scalar_t__ tree ;
struct TYPE_2__ {int /*<<< orphan*/  (* type_decl ) (scalar_t__,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int,int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNCTION_DECL ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  TV_SYMOUT ; 
 int /*<<< orphan*/  TV_VARCONST ; 
 scalar_t__ TYPE_DECL ; 
 scalar_t__ VAR_DECL ; 
 int /*<<< orphan*/  asm_out_file ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 TYPE_1__* debug_hooks ; 
 scalar_t__ errorcount ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ last_assemble_variable_decl ; 
 scalar_t__ FUNC16 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__) ; 
 scalar_t__ sorrycount ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 

void
FUNC21 (tree decl,
			  int top_level,
			  int at_end)
{
  /* We deferred calling assemble_alias so that we could collect
     other attributes such as visibility.  Emit the alias now.  */
  {
    tree alias;
    alias = FUNC16 ("alias", FUNC2 (decl));
    if (alias)
      {
	alias = FUNC10 (FUNC10 (alias));
	alias = FUNC15 (FUNC9 (alias));
	FUNC11 (decl, alias);
      }
  }

  /* Can't defer this, because it needs to happen before any
     later function definitions are processed.  */
  if (FUNC1 (decl) && FUNC6 (decl))
    FUNC17 (decl);

  /* Forward declarations for nested functions are not "external",
     but we need to treat them as if they were.  */
  if (FUNC8 (decl) || FUNC4 (decl)
      || FUNC7 (decl) == FUNCTION_DECL)
    {
      FUNC20 (TV_VARCONST);

      /* Don't output anything when a tentative file-scope definition
	 is seen.  But at end of compilation, do output code for them.

	 We do output all variables when unit-at-a-time is active and rely on
	 callgraph code to defer them except for forward declarations
	 (see gcc.c-torture/compile/920624-1.c) */
      if ((at_end
	   || !FUNC3 (decl)
	   || FUNC5 (decl))
	  && !FUNC4 (decl))
	{
	  if (FUNC7 (decl) != FUNCTION_DECL)
	    FUNC13 (decl);
	  else
	    FUNC12 (decl, top_level, at_end, 0);
	}

#ifdef ASM_FINISH_DECLARE_OBJECT
      if (decl == last_assemble_variable_decl)
	{
	  ASM_FINISH_DECLARE_OBJECT (asm_out_file, decl,
				     top_level, at_end);
	}
#endif

      FUNC19 (TV_VARCONST);
    }
  else if (FUNC7 (decl) == TYPE_DECL
	   /* Like in rest_of_type_compilation, avoid confusing the debug
	      information machinery when there are errors.  */
	   && !(sorrycount || errorcount))
    {
      FUNC20 (TV_SYMOUT);
      debug_hooks->type_decl (decl, !top_level);
      FUNC19 (TV_SYMOUT);
    }

  /* Let cgraph know about the existence of variables.  */
  if (FUNC7 (decl) == VAR_DECL && !FUNC4 (decl))
    FUNC14 (decl);
}