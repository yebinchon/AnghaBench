#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ieee_buflist {int dummy; } ;
struct ieee_handle {char* modname; TYPE_2__* type_stack; struct ieee_buflist types; struct ieee_buflist global_types; } ;
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_3__ {struct ieee_buflist strdef; int /*<<< orphan*/  localp; scalar_t__ ignorep; } ;
struct TYPE_4__ {TYPE_1__ type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee_handle*,struct ieee_buflist*,struct ieee_buflist*) ; 
 scalar_t__ ieee_bb_record_enum ; 
 scalar_t__ FUNC2 (struct ieee_buflist*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee_handle*,struct ieee_buflist*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee_handle*,struct ieee_buflist*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee_handle*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee_handle*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee_handle*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bfd_boolean
FUNC8 (void *p)
{
  struct ieee_handle *info = (struct ieee_handle *) p;
  struct ieee_buflist *pb;

  FUNC0 (info->type_stack != NULL
	  && ! FUNC2 (&info->type_stack->type.strdef));

  /* If we were ignoring this struct definition because it was a
     duplicate definition, just through away whatever bytes we have
     accumulated.  Leave the type on the stack.  */
  if (info->type_stack->type.ignorep)
    return TRUE;

  /* If this is not a duplicate definition of this tag, then localp
     will be FALSE, and we can put it in the global type block.
     FIXME: We should avoid outputting duplicate definitions which are
     the same.  */
  if (! info->type_stack->type.localp)
    {
      /* Make sure we have started the global type block.  */
      if (FUNC2 (&info->global_types))
	{
	  if (! FUNC3 (info, &info->global_types)
	      || ! FUNC5 (info, (int) ieee_bb_record_enum)
	      || ! FUNC5 (info, 2)
	      || ! FUNC7 (info, 0)
	      || ! FUNC6 (info, ""))
	    return FALSE;
	}
      pb = &info->global_types;
    }
  else
    {
      /* Make sure we have started the types block.  */
      if (FUNC2 (&info->types))
	{
	  if (! FUNC3 (info, &info->types)
	      || ! FUNC5 (info, (int) ieee_bb_record_enum)
	      || ! FUNC5 (info, 1)
	      || ! FUNC7 (info, 0)
	      || ! FUNC6 (info, info->modname))
	    return FALSE;
	}
      pb = &info->types;
    }

  /* Append the struct definition to the types.  */
  if (! FUNC1 (info, pb, &info->type_stack->type.strdef)
      || ! FUNC4 (info, &info->type_stack->type.strdef))
    return FALSE;

  /* Leave the struct on the type stack.  */

  return TRUE;
}