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
struct dwarf2_cu {scalar_t__ language; } ;
struct die_info {int tag; int /*<<< orphan*/ * type; struct die_info* parent; } ;

/* Variables and functions */
#define  DW_TAG_class_type 130 
#define  DW_TAG_namespace 129 
#define  DW_TAG_structure_type 128 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (struct die_info*,struct dwarf2_cu*) ; 
 scalar_t__ language_cplus ; 
 int /*<<< orphan*/  FUNC2 (struct die_info*,int*,struct dwarf2_cu*) ; 
 char const* processing_current_prefix ; 
 char* FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (char*) ; 

__attribute__((used)) static char *
FUNC6 (struct die_info *die, struct dwarf2_cu *cu)
{
  struct die_info *parent;

  if (cu->language != language_cplus)
    return NULL;

  parent = die->parent;

  if (parent == NULL)
    {
      return FUNC5 ("");
    }
  else
    {
      switch (parent->tag) {
      case DW_TAG_namespace:
	{
	  /* FIXME: carlton/2004-03-05: Should I follow extension dies
	     before doing this check?  */
	  if (parent->type != NULL && FUNC0 (parent->type) != NULL)
	    {
	      return FUNC5 (FUNC0 (parent->type));
	    }
	  else
	    {
	      int dummy;
	      char *parent_prefix = FUNC6 (parent, cu);
	      char *retval = FUNC3 (parent_prefix,
					      FUNC2 (parent, &dummy,
							      cu));
	      FUNC4 (parent_prefix);
	      return retval;
	    }
	}
	break;
      case DW_TAG_class_type:
      case DW_TAG_structure_type:
	{
	  if (parent->type != NULL && FUNC0 (parent->type) != NULL)
	    {
	      return FUNC5 (FUNC0 (parent->type));
	    }
	  else
	    {
	      const char *old_prefix = processing_current_prefix;
	      char *new_prefix = FUNC6 (parent, cu);
	      char *retval;

	      processing_current_prefix = new_prefix;
	      retval = FUNC1 (parent, cu);
	      processing_current_prefix = old_prefix;

	      FUNC4 (new_prefix);
	      return retval;
	    }
	}
      default:
	return FUNC6 (parent, cu);
      }
    }
}