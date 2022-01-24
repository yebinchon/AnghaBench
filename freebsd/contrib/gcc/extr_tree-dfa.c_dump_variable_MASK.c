#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* var_ann_t ;
typedef  scalar_t__ tree ;
struct TYPE_3__ {scalar_t__ symbol_mem_tag; unsigned int escape_mask; scalar_t__ is_aliased; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 unsigned int ESCAPE_BAD_CAST ; 
 unsigned int ESCAPE_IS_GLOBAL ; 
 unsigned int ESCAPE_IS_PARM ; 
 unsigned int ESCAPE_STORED_IN_GLOBAL ; 
 unsigned int ESCAPE_TO_ASM ; 
 unsigned int ESCAPE_TO_CALL ; 
 unsigned int ESCAPE_TO_PURE_CONST ; 
 unsigned int ESCAPE_TO_RETURN ; 
 unsigned int ESCAPE_UNKNOWN ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ SSA_NAME ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int TDF_DETAILS ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int dump_flags ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 scalar_t__ FUNC14 (scalar_t__) ; 
 scalar_t__ FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 TYPE_1__* FUNC17 (scalar_t__) ; 

void
FUNC18 (FILE *file, tree var)
{
  var_ann_t ann;

  if (FUNC4 (var) == SSA_NAME)
    {
      if (FUNC1 (FUNC6 (var)))
	FUNC9 (file, var);
      var = FUNC2 (var);
    }

  if (var == NULL_TREE)
    {
      FUNC11 (file, "<nil>");
      return;
    }

  FUNC16 (file, var, dump_flags);

  ann = FUNC17 (var);

  FUNC11 (file, ", UID %u", (unsigned) FUNC0 (var));

  FUNC11 (file, ", ");
  FUNC16 (file, FUNC6 (var), dump_flags);

  if (ann && ann->symbol_mem_tag)
    {
      FUNC11 (file, ", symbol memory tag: ");
      FUNC16 (file, ann->symbol_mem_tag, dump_flags);
    }

  if (ann && ann->is_aliased)
    FUNC11 (file, ", is aliased");

  if (FUNC3 (var))
    FUNC11 (file, ", is addressable");
  
  if (FUNC14 (var))
    FUNC11 (file, ", is global");

  if (FUNC5 (var))
    FUNC11 (file, ", is volatile");

  if (FUNC13 (var))
    {
      FUNC11 (file, ", call clobbered");
      if (dump_flags & TDF_DETAILS)
	{
	  var_ann_t va = FUNC17 (var);
	  unsigned int escape_mask = va->escape_mask;
	  
	  FUNC11 (file, " (");
	  if (escape_mask & ESCAPE_STORED_IN_GLOBAL)
	    FUNC11 (file, ", stored in global");
	  if (escape_mask & ESCAPE_TO_ASM)
	    FUNC11 (file, ", goes through ASM");
	  if (escape_mask & ESCAPE_TO_CALL)
	    FUNC11 (file, ", passed to call");
	  if (escape_mask & ESCAPE_BAD_CAST)
	    FUNC11 (file, ", bad cast");
	  if (escape_mask & ESCAPE_TO_RETURN)
	    FUNC11 (file, ", returned from func");
	  if (escape_mask & ESCAPE_TO_PURE_CONST)
	    FUNC11 (file, ", passed to pure/const");
	  if (escape_mask & ESCAPE_IS_GLOBAL)
	    FUNC11 (file, ", is global var");
	  if (escape_mask & ESCAPE_IS_PARM)
	    FUNC11 (file, ", is incoming pointer");
	  if (escape_mask & ESCAPE_UNKNOWN)
	    FUNC11 (file, ", unknown escape");
	  FUNC11 (file, " )");
	}
    }

  if (FUNC7 (var))
    {
      FUNC11 (file, ", default def: ");
      FUNC16 (file, FUNC7 (var), dump_flags);
    }

  if (FUNC15 (var))
    {
      FUNC11 (file, ", may aliases: ");
      FUNC8 (file, var);
    }

  if (FUNC12 (var))
    {
      FUNC11 (file, ", sub-vars: ");
      FUNC10 (file, var);
    }

  FUNC11 (file, "\n");
}