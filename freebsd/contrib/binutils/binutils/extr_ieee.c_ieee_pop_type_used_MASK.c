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
struct ieee_buflist {int dummy; } ;
struct TYPE_2__ {unsigned int indx; struct ieee_buflist fndef; scalar_t__ localp; } ;
struct ieee_type_stack {struct ieee_type_stack* next; TYPE_1__ type; } ;
struct ieee_handle {char* modname; struct ieee_type_stack* type_stack; struct ieee_buflist global_types; struct ieee_buflist types; } ;
typedef  scalar_t__ bfd_boolean ;

/* Variables and functions */
 unsigned int FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee_type_stack*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee_handle*,struct ieee_buflist*,struct ieee_buflist*) ; 
 scalar_t__ ieee_bb_record_enum ; 
 scalar_t__ FUNC3 (struct ieee_buflist*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee_handle*,struct ieee_buflist*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee_handle*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee_handle*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee_handle*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int
FUNC8 (struct ieee_handle *info, bfd_boolean used)
{
  struct ieee_type_stack *ts;
  unsigned int ret;

  ts = info->type_stack;
  FUNC0 (ts != NULL);

  /* If this is a function type, and we need it, we need to append the
     actual definition to the typedef block now.  */
  if (used && ! FUNC3 (&ts->type.fndef))
    {
      struct ieee_buflist *buflist;

      if (ts->type.localp)
	{
	  /* Make sure we have started the types block.  */
	  if (FUNC3 (&info->types))
	    {
	      if (! FUNC4 (info, &info->types)
		  || ! FUNC5 (info, (int) ieee_bb_record_enum)
		  || ! FUNC5 (info, 1)
		  || ! FUNC7 (info, 0)
		  || ! FUNC6 (info, info->modname))
		return FALSE;
	    }
	  buflist = &info->types;
	}
      else
	{
	  /* Make sure we started the global type block.  */
	  if (FUNC3 (&info->global_types))
	    {
	      if (! FUNC4 (info, &info->global_types)
		  || ! FUNC5 (info, (int) ieee_bb_record_enum)
		  || ! FUNC5 (info, 2)
		  || ! FUNC7 (info, 0)
		  || ! FUNC6 (info, ""))
		return FALSE;
	    }
	  buflist = &info->global_types;
	}

      if (! FUNC2 (info, buflist, &ts->type.fndef))
	return FALSE;
    }

  ret = ts->type.indx;
  info->type_stack = ts->next;
  FUNC1 (ts);
  return ret;
}