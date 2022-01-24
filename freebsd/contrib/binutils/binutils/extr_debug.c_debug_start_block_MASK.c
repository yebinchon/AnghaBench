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
struct debug_block {struct debug_block* next; struct debug_block* children; void* end; void* start; struct debug_block* parent; } ;
typedef  void* bfd_vma ;
typedef  int /*<<< orphan*/  bfd_boolean ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct debug_block*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int) ; 

bfd_boolean
FUNC4 (void *handle, bfd_vma addr)
{
  struct debug_handle *info = (struct debug_handle *) handle;
  struct debug_block *b, **pb;

  /* We must always have a current block: debug_record_function sets
     one up.  */
  if (info->current_unit == NULL
      || info->current_block == NULL)
    {
      FUNC1 (FUNC0("debug_start_block: no current block"));
      return FALSE;
    }

  b = (struct debug_block *) FUNC3 (sizeof *b);
  FUNC2 (b, 0, sizeof *b);

  b->parent = info->current_block;
  b->start = addr;
  b->end = (bfd_vma) -1;

  /* This new block is a child of the current block.  */
  for (pb = &info->current_block->children;
       *pb != NULL;
       pb = &(*pb)->next)
    ;
  *pb = b;

  info->current_block = b;

  return TRUE;
}