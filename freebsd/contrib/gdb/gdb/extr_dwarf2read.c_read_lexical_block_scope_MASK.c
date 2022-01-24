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
struct objfile {int /*<<< orphan*/  section_offsets; } ;
struct dwarf2_cu {struct objfile* objfile; } ;
struct die_info {scalar_t__ tag; struct die_info* child; } ;
struct context_stack {int /*<<< orphan*/ * locals; int /*<<< orphan*/  start_addr; int /*<<< orphan*/  old_blocks; } ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct objfile*) ; 
 int /*<<< orphan*/  FUNC2 (struct die_info*,scalar_t__*,scalar_t__*,struct dwarf2_cu*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,struct objfile*) ; 
 int /*<<< orphan*/ * local_symbols ; 
 struct context_stack* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct die_info*,struct dwarf2_cu*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct die_info* FUNC7 (struct die_info*) ; 

__attribute__((used)) static void
FUNC8 (struct die_info *die, struct dwarf2_cu *cu)
{
  struct objfile *objfile = cu->objfile;
  struct context_stack *new;
  CORE_ADDR lowpc, highpc;
  struct die_info *child_die;
  CORE_ADDR baseaddr;

  baseaddr = FUNC0 (objfile->section_offsets, FUNC1 (objfile));

  /* Ignore blocks with missing or invalid low and high pc attributes.  */
  /* ??? Perhaps consider discontiguous blocks defined by DW_AT_ranges
     as multiple lexical blocks?  Handling children in a sane way would
     be nasty.  Might be easier to properly extend generic blocks to 
     describe ranges.  */
  if (!FUNC2 (die, &lowpc, &highpc, cu))
    return;
  lowpc += baseaddr;
  highpc += baseaddr;

  FUNC6 (0, lowpc);
  if (die->child != NULL)
    {
      child_die = die->child;
      while (child_die && child_die->tag)
	{
	  FUNC5 (child_die, cu);
	  child_die = FUNC7 (child_die);
	}
    }
  new = FUNC4 ();

  if (local_symbols != NULL)
    {
      FUNC3 (0, &local_symbols, new->old_blocks, new->start_addr,
		    highpc, objfile);
    }
  local_symbols = new->locals;
}