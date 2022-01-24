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
struct stab_handle {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  left; struct demangle_component* right; } ;
struct TYPE_4__ {TYPE_1__ s_binary; } ;
struct demangle_component {scalar_t__ type; TYPE_2__ u; } ;
typedef  int /*<<< orphan*/ * debug_type ;
typedef  scalar_t__ bfd_boolean ;

/* Variables and functions */
 int /*<<< orphan*/ * DEBUG_TYPE_NULL ; 
 scalar_t__ DEMANGLE_COMPONENT_ARGLIST ; 
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC3 (void*,struct stab_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC4 (unsigned int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ **,unsigned int) ; 

__attribute__((used)) static debug_type *
FUNC6 (void *dhandle, struct stab_handle *info,
			  struct demangle_component *arglist,
			  bfd_boolean *pvarargs)
{
  struct demangle_component *dc;
  unsigned int alloc, count;
  debug_type *pargs;

  alloc = 10;
  pargs = (debug_type *) FUNC4 (alloc * sizeof *pargs);
  *pvarargs = FALSE;

  count = 0;

  for (dc = arglist;
       dc != NULL;
       dc = dc->u.s_binary.right)
    {
      debug_type arg;
      bfd_boolean varargs;

      if (dc->type != DEMANGLE_COMPONENT_ARGLIST)
	{
	  FUNC1 (stderr, "%s", FUNC0("Unexpected type in v3 arglist demangling\n"));
	  FUNC2 (pargs);
	  return NULL;
	}

      arg = FUNC3 (dhandle, info, dc->u.s_binary.left,
				  NULL, &varargs);
      if (arg == NULL)
	{
	  if (varargs)
	    {
	      *pvarargs = TRUE;
	      continue;
	    }
	  FUNC2 (pargs);
	  return NULL;
	}

      if (count + 1 >= alloc)
	{
	  alloc += 10;
	  pargs = (debug_type *) FUNC5 (pargs, alloc * sizeof *pargs);
	}

      pargs[count] = arg;
      ++count;
    }

  pargs[count] = DEBUG_TYPE_NULL;

  return pargs;
}