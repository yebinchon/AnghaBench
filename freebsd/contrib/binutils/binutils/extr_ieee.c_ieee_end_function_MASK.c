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
struct ieee_handle {int block_depth; scalar_t__ fnargcount; int /*<<< orphan*/  fnargs; int /*<<< orphan*/  fntype; int /*<<< orphan*/ * fnname; int /*<<< orphan*/  types; int /*<<< orphan*/  modname; } ;
typedef  int /*<<< orphan*/  bfd_boolean ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee_handle*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ ieee_bb_record_enum ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee_handle*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee_handle*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee_handle*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee_handle*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee_handle*,scalar_t__) ; 

__attribute__((used)) static bfd_boolean
FUNC8 (void *p)
{
  struct ieee_handle *info = (struct ieee_handle *) p;

  FUNC0 (info->block_depth == 1);

  --info->block_depth;

  /* Now we can finish up fntype, and add it to the typdef section.
     At this point, fntype is the 'x' type up to the argument count,
     and fnargs is the argument types.  We must add the argument
     count, and we must add the level.  FIXME: We don't record varargs
     functions correctly.  In fact, stabs debugging does not give us
     enough information to do so.  */
  if (! FUNC3 (info, &info->fntype)
      || ! FUNC7 (info, info->fnargcount)
      || ! FUNC3 (info, &info->fnargs)
      || ! FUNC7 (info, 0))
    return FALSE;

  /* Make sure the typdef block has been started.  */
  if (FUNC2 (&info->types))
    {
      if (! FUNC3 (info, &info->types)
	  || ! FUNC5 (info, (int) ieee_bb_record_enum)
	  || ! FUNC5 (info, 1)
	  || ! FUNC7 (info, 0)
	  || ! FUNC6 (info, info->modname))
	return FALSE;
    }

  if (! FUNC1 (info, &info->types, &info->fntype)
      || ! FUNC1 (info, &info->types, &info->fnargs))
    return FALSE;

  info->fnname = NULL;
  if (! FUNC4 (info, &info->fntype)
      || ! FUNC4 (info, &info->fnargs))
    return FALSE;
  info->fnargcount = 0;

  return TRUE;
}