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
struct debug_handle {struct debug_block* current_block; int /*<<< orphan*/ * current_unit; } ;
struct debug_block {int /*<<< orphan*/  end; struct debug_block* parent; } ;
typedef  int /*<<< orphan*/  bfd_vma ;
typedef  int /*<<< orphan*/  bfd_boolean ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

bfd_boolean
FUNC2 (void *handle, bfd_vma addr)
{
  struct debug_handle *info = (struct debug_handle *) handle;
  struct debug_block *parent;

  if (info->current_unit == NULL
      || info->current_block == NULL)
    {
      FUNC1 (FUNC0("debug_end_block: no current block"));
      return FALSE;
    }

  parent = info->current_block->parent;
  if (parent == NULL)
    {
      FUNC1 (FUNC0("debug_end_block: attempt to close top level block"));
      return FALSE;
    }

  info->current_block->end = addr;

  info->current_block = parent;

  return TRUE;
}