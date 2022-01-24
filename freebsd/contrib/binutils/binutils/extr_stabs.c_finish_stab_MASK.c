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
struct stab_tag {int kind; int /*<<< orphan*/  slot; int /*<<< orphan*/  name; struct stab_tag* next; } ;
struct stab_handle {struct stab_tag* tags; scalar_t__ function_end; scalar_t__ within_function; } ;
typedef  enum debug_type_kind { ____Placeholder_debug_type_kind } debug_type_kind ;
typedef  scalar_t__ bfd_vma ;
typedef  scalar_t__ bfd_boolean ;

/* Variables and functions */
 int DEBUG_KIND_ILLEGAL ; 
 int DEBUG_KIND_STRUCT ; 
 int /*<<< orphan*/  DEBUG_TYPE_NULL ; 
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,struct stab_handle*) ; 

bfd_boolean
FUNC3 (void *dhandle, void *handle)
{
  struct stab_handle *info = (struct stab_handle *) handle;
  struct stab_tag *st;

  if (info->within_function)
    {
      if (! FUNC2 (dhandle, info)
	  || ! FUNC0 (dhandle, info->function_end))
	return FALSE;
      info->within_function = FALSE;
      info->function_end = (bfd_vma) -1;
    }

  for (st = info->tags; st != NULL; st = st->next)
    {
      enum debug_type_kind kind;

      kind = st->kind;
      if (kind == DEBUG_KIND_ILLEGAL)
	kind = DEBUG_KIND_STRUCT;
      st->slot = FUNC1 (dhandle, st->name, kind);
      if (st->slot == DEBUG_TYPE_NULL)
	return FALSE;
    }

  return TRUE;
}