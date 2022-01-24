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
struct TYPE_2__ {scalar_t__ entry_point; scalar_t__ entry_func_highpc; scalar_t__ entry_func_lowpc; } ;
struct objfile {TYPE_1__ ei; int /*<<< orphan*/  section_offsets; } ;
struct dwarf2_cu {scalar_t__ language; int /*<<< orphan*/ * list_in_scope; struct objfile* objfile; } ;
struct die_info {scalar_t__ tag; struct die_info* child; int /*<<< orphan*/  type; } ;
struct context_stack {int /*<<< orphan*/  params; int /*<<< orphan*/  locals; int /*<<< orphan*/  old_blocks; int /*<<< orphan*/  name; } ;
struct cleanup {int dummy; } ;
struct attribute {int dummy; } ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DW_AT_frame_base ; 
 int /*<<< orphan*/  FUNC1 (struct objfile*) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,scalar_t__,struct dwarf2_cu*) ; 
 char* FUNC3 (struct die_info*,struct dwarf2_cu*) ; 
 struct die_info* FUNC4 (struct die_info*,struct dwarf2_cu*) ; 
 int /*<<< orphan*/  FUNC5 (struct cleanup*) ; 
 struct attribute* FUNC6 (struct die_info*,int /*<<< orphan*/ ,struct dwarf2_cu*) ; 
 int /*<<< orphan*/  FUNC7 (struct die_info*,scalar_t__*,scalar_t__*,struct dwarf2_cu*) ; 
 char* FUNC8 (struct die_info*,struct dwarf2_cu*) ; 
 int /*<<< orphan*/  FUNC9 (struct attribute*,int /*<<< orphan*/ ,struct dwarf2_cu*) ; 
 int /*<<< orphan*/  file_symbols ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__,struct objfile*) ; 
 scalar_t__ language_cplus ; 
 int /*<<< orphan*/  local_symbols ; 
 struct cleanup* FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct die_info*,int /*<<< orphan*/ ,struct dwarf2_cu*) ; 
 scalar_t__ FUNC13 () ; 
 int /*<<< orphan*/  param_symbols ; 
 struct context_stack* FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (struct die_info*,struct dwarf2_cu*) ; 
 char const* processing_current_prefix ; 
 struct context_stack* FUNC16 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct die_info* FUNC17 (struct die_info*) ; 
 int /*<<< orphan*/  xfree ; 

__attribute__((used)) static void
FUNC18 (struct die_info *die, struct dwarf2_cu *cu)
{
  struct objfile *objfile = cu->objfile;
  struct context_stack *new;
  CORE_ADDR lowpc;
  CORE_ADDR highpc;
  struct die_info *child_die;
  struct attribute *attr;
  char *name;
  const char *previous_prefix = processing_current_prefix;
  struct cleanup *back_to = NULL;
  CORE_ADDR baseaddr;

  baseaddr = FUNC0 (objfile->section_offsets, FUNC1 (objfile));

  name = FUNC8 (die, cu);

  /* Ignore functions with missing or empty names and functions with
     missing or invalid low and high pc attributes.  */
  if (name == NULL || !FUNC7 (die, &lowpc, &highpc, cu))
    return;

  if (cu->language == language_cplus)
    {
      struct die_info *spec_die = FUNC4 (die, cu);

      /* NOTE: carlton/2004-01-23: We have to be careful in the
         presence of DW_AT_specification.  For example, with GCC 3.4,
         given the code

           namespace N {
             void foo() {
               // Definition of N::foo.
             }
           }

         then we'll have a tree of DIEs like this:

         1: DW_TAG_compile_unit
           2: DW_TAG_namespace        // N
             3: DW_TAG_subprogram     // declaration of N::foo
           4: DW_TAG_subprogram       // definition of N::foo
                DW_AT_specification   // refers to die #3

         Thus, when processing die #4, we have to pretend that we're
         in the context of its DW_AT_specification, namely the contex
         of die #3.  */
	
      if (spec_die != NULL)
	{
	  char *specification_prefix = FUNC3 (spec_die, cu);
	  processing_current_prefix = specification_prefix;
	  back_to = FUNC11 (xfree, specification_prefix);
	}
    }

  lowpc += baseaddr;
  highpc += baseaddr;

  /* Record the function range for dwarf_decode_lines.  */
  FUNC2 (name, lowpc, highpc, cu);

  if (objfile->ei.entry_point >= lowpc &&
      objfile->ei.entry_point < highpc)
    {
      objfile->ei.entry_func_lowpc = lowpc;
      objfile->ei.entry_func_highpc = highpc;
    }

  new = FUNC16 (0, lowpc);
  new->name = FUNC12 (die, die->type, cu);

  /* If there is a location expression for DW_AT_frame_base, record
     it.  */
  attr = FUNC6 (die, DW_AT_frame_base, cu);
  if (attr)
    /* FIXME: cagney/2004-01-26: The DW_AT_frame_base's location
       expression is being recorded directly in the function's symbol
       and not in a separate frame-base object.  I guess this hack is
       to avoid adding some sort of frame-base adjunct/annex to the
       function's symbol :-(.  The problem with doing this is that it
       results in a function symbol with a location expression that
       has nothing to do with the location of the function, ouch!  The
       relationship should be: a function's symbol has-a frame base; a
       frame-base has-a location expression.  */
    FUNC9 (attr, new->name, cu);

  cu->list_in_scope = &local_symbols;

  if (die->child != NULL)
    {
      child_die = die->child;
      while (child_die && child_die->tag)
	{
	  FUNC15 (child_die, cu);
	  child_die = FUNC17 (child_die);
	}
    }

  new = FUNC14 ();
  /* Make a block for the local symbols within.  */
  FUNC10 (new->name, &local_symbols, new->old_blocks,
		lowpc, highpc, objfile);
  
  /* In C++, we can have functions nested inside functions (e.g., when
     a function declares a class that has methods).  This means that
     when we finish processing a function scope, we may need to go
     back to building a containing block's symbol lists.  */
  local_symbols = new->locals;
  param_symbols = new->params;

  /* If we've finished processing a top-level function, subsequent
     symbols go in the file symbol list.  */
  if (FUNC13 ())
    cu->list_in_scope = &file_symbols;

  processing_current_prefix = previous_prefix;
  if (back_to != NULL)
    FUNC5 (back_to);
}