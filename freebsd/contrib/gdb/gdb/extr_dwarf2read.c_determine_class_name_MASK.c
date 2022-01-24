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
struct dwarf2_cu {int dummy; } ;
struct die_info {scalar_t__ tag; struct die_info* child; } ;
struct cleanup {int dummy; } ;

/* Variables and functions */
 scalar_t__ DW_TAG_subprogram ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (struct die_info*,struct dwarf2_cu*) ; 
 struct die_info* FUNC2 (struct die_info*,struct dwarf2_cu*) ; 
 int /*<<< orphan*/  FUNC3 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC4 (struct die_info*,struct dwarf2_cu*) ; 
 char* FUNC5 (struct die_info*,struct dwarf2_cu*) ; 
 struct cleanup* FUNC6 (int /*<<< orphan*/ ,char*) ; 
 char* processing_current_prefix ; 
 int /*<<< orphan*/  processing_has_namespace_info ; 
 struct die_info* FUNC7 (struct die_info*) ; 
 char* FUNC8 (char*,char const*) ; 
 int /*<<< orphan*/  xfree ; 

__attribute__((used)) static char *
FUNC9 (struct die_info *die, struct dwarf2_cu *cu)
{
  struct cleanup *back_to = NULL;
  struct die_info *spec_die = FUNC2 (die, cu);
  char *new_prefix = NULL;

  /* If this is the definition of a class that is declared by another
     die, then processing_current_prefix may not be accurate; see
     read_func_scope for a similar example.  */
  if (spec_die != NULL)
    {
      char *specification_prefix = FUNC1 (spec_die, cu);
      processing_current_prefix = specification_prefix;
      back_to = FUNC6 (xfree, specification_prefix);
    }

  /* If we don't have namespace debug info, guess the name by trying
     to demangle the names of members, just like we did in
     add_partial_structure.  */
  if (!processing_has_namespace_info)
    {
      struct die_info *child;

      for (child = die->child;
	   child != NULL && child->tag != 0;
	   child = FUNC7 (child))
	{
	  if (child->tag == DW_TAG_subprogram)
	    {
	      new_prefix = FUNC0 (FUNC4
						     (child, cu));

	      if (new_prefix != NULL)
		break;
	    }
	}
    }

  if (new_prefix == NULL)
    {
      const char *name = FUNC5 (die, cu);
      new_prefix = FUNC8 (processing_current_prefix,
				    name ? name : "<<anonymous>>");
    }

  if (back_to != NULL)
    FUNC3 (back_to);

  return new_prefix;
}