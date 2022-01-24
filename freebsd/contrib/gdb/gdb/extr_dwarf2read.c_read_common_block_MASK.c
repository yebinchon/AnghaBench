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
struct symbol {int dummy; } ;
struct dwarf2_cu {int dummy; } ;
struct die_info {scalar_t__ tag; struct die_info* child; } ;
struct attribute {scalar_t__ form; } ;
typedef  scalar_t__ SYMBOL_VALUE_ADDRESS ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  DW_AT_data_member_location ; 
 int /*<<< orphan*/  DW_AT_location ; 
 int /*<<< orphan*/  FUNC0 (struct attribute*) ; 
 scalar_t__ DW_FORM_data4 ; 
 scalar_t__ DW_FORM_data8 ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct attribute*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct dwarf2_cu*) ; 
 struct attribute* FUNC4 (struct die_info*,int /*<<< orphan*/ ,struct dwarf2_cu*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  global_symbols ; 
 struct symbol* FUNC7 (struct die_info*,int /*<<< orphan*/ *,struct dwarf2_cu*) ; 
 struct die_info* FUNC8 (struct die_info*) ; 

__attribute__((used)) static void
FUNC9 (struct die_info *die, struct dwarf2_cu *cu)
{
  struct die_info *child_die;
  struct attribute *attr;
  struct symbol *sym;
  CORE_ADDR base = (CORE_ADDR) 0;

  attr = FUNC4 (die, DW_AT_location, cu);
  if (attr)
    {
      /* Support the .debug_loc offsets */
      if (FUNC2 (attr))
        {
          base = FUNC3 (FUNC0 (attr), cu);
        }
      else if (attr->form == DW_FORM_data4 || attr->form == DW_FORM_data8)
        {
	  FUNC5 ();
        }
      else
        {
	  FUNC6 ("DW_AT_location",
						 "common block member");
        }
    }
  if (die->child != NULL)
    {
      child_die = die->child;
      while (child_die && child_die->tag)
	{
	  sym = FUNC7 (child_die, NULL, cu);
	  attr = FUNC4 (child_die, DW_AT_data_member_location, cu);
	  if (attr)
	    {
	      SYMBOL_VALUE_ADDRESS (sym) =
		base + FUNC3 (FUNC0 (attr), cu);
	      FUNC1 (sym, &global_symbols);
	    }
	  child_die = FUNC8 (child_die);
	}
    }
}