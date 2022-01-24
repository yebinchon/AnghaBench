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
struct objfile {int dummy; } ;
struct dieinfo {scalar_t__ die_length; int die_tag; scalar_t__ at_sibling; int /*<<< orphan*/  has_at_low_pc; void* at_high_pc; void* at_low_pc; } ;

/* Variables and functions */
 scalar_t__ SIZEOF_DIE_LENGTH ; 
 void* FUNC0 (void*) ; 
#define  TAG_array_type 139 
#define  TAG_class_type 138 
#define  TAG_compile_unit 137 
#define  TAG_enumeration_type 136 
#define  TAG_global_subroutine 135 
#define  TAG_lexical_block 134 
 int TAG_padding ; 
#define  TAG_pointer_type 133 
#define  TAG_string_type 132 
#define  TAG_structure_type 131 
#define  TAG_subroutine 130 
#define  TAG_subroutine_type 129 
#define  TAG_union_type 128 
 int /*<<< orphan*/  FUNC1 (struct dieinfo*,char*,struct objfile*) ; 
 int /*<<< orphan*/  FUNC2 (struct dieinfo*,struct objfile*) ; 
 int /*<<< orphan*/ * current_subfile ; 
 int /*<<< orphan*/  dbbase ; 
 int /*<<< orphan*/  dbroff ; 
 int /*<<< orphan*/  FUNC3 (struct dieinfo*) ; 
 int /*<<< orphan*/  FUNC4 (struct dieinfo*,struct objfile*) ; 
 int /*<<< orphan*/  FUNC5 (struct dieinfo*,char*,char*,struct objfile*) ; 
 int /*<<< orphan*/  FUNC6 (struct dieinfo*,char*,char*,struct objfile*) ; 
 int /*<<< orphan*/  FUNC7 (struct dieinfo*,char*,char*,struct objfile*) ; 
 int /*<<< orphan*/  FUNC8 (struct dieinfo*,char*,char*,struct objfile*) ; 
 int /*<<< orphan*/  FUNC9 (struct dieinfo*,char*,char*,struct objfile*) ; 
 int /*<<< orphan*/  FUNC10 (struct dieinfo*,char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct dieinfo*) ; 
 int /*<<< orphan*/  FUNC12 (struct dieinfo*) ; 

__attribute__((used)) static void
FUNC13 (char *thisdie, char *enddie, struct objfile *objfile)
{
  char *nextdie;
  struct dieinfo di;

  while (thisdie < enddie)
    {
      FUNC1 (&di, thisdie, objfile);
      if (di.die_length < SIZEOF_DIE_LENGTH)
	{
	  break;
	}
      else if (di.die_tag == TAG_padding)
	{
	  nextdie = thisdie + di.die_length;
	}
      else
	{
	  FUNC2 (&di, objfile);
	  if (di.at_sibling != 0)
	    {
	      nextdie = dbbase + di.at_sibling - dbroff;
	    }
	  else
	    {
	      nextdie = thisdie + di.die_length;
	    }
	  /* I think that these are always text, not data, addresses.  */
	  di.at_low_pc = FUNC0 (di.at_low_pc);
	  di.at_high_pc = FUNC0 (di.at_high_pc);
	  switch (di.die_tag)
	    {
	    case TAG_compile_unit:
	      /* Skip Tag_compile_unit if we are already inside a compilation
	         unit, we are unable to handle nested compilation units
	         properly (FIXME).  */
	      if (current_subfile == NULL)
		FUNC6 (&di, thisdie, nextdie, objfile);
	      else
		nextdie = thisdie + di.die_length;
	      break;
	    case TAG_global_subroutine:
	    case TAG_subroutine:
	      if (di.has_at_low_pc)
		{
		  FUNC7 (&di, thisdie, nextdie, objfile);
		}
	      break;
	    case TAG_lexical_block:
	      FUNC8 (&di, thisdie, nextdie, objfile);
	      break;
	    case TAG_class_type:
	    case TAG_structure_type:
	    case TAG_union_type:
	      FUNC9 (&di, thisdie, nextdie, objfile);
	      break;
	    case TAG_enumeration_type:
	      FUNC5 (&di, thisdie, nextdie, objfile);
	      break;
	    case TAG_subroutine_type:
	      FUNC10 (&di, thisdie, nextdie);
	      break;
	    case TAG_array_type:
	      FUNC3 (&di);
	      break;
	    case TAG_pointer_type:
	      FUNC11 (&di);
	      break;
	    case TAG_string_type:
	      FUNC12 (&di);
	      break;
	    default:
	      FUNC4 (&di, objfile);
	      break;
	    }
	}
      thisdie = nextdie;
    }
}