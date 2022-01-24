#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct bfd_in_memory {scalar_t__ buffer; scalar_t__ size; } ;
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_3__ {scalar_t__ direction; scalar_t__ where; int /*<<< orphan*/  flags; struct bfd_in_memory* iostream; } ;
typedef  TYPE_1__ bfd ;

/* Variables and functions */
 int /*<<< orphan*/  BFD_IN_MEMORY ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  bfd_error_invalid_operation ; 
 struct bfd_in_memory* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ no_direction ; 
 scalar_t__ write_direction ; 

bfd_boolean
FUNC2 (bfd *abfd)
{
  struct bfd_in_memory *bim;

  if (abfd->direction != no_direction)
    {
      FUNC1 (bfd_error_invalid_operation);
      return FALSE;
    }

  bim = FUNC0 (sizeof (struct bfd_in_memory));
  abfd->iostream = bim;
  /* bfd_bwrite will grow these as needed.  */
  bim->size = 0;
  bim->buffer = 0;

  abfd->flags |= BFD_IN_MEMORY;
  abfd->direction = write_direction;
  abfd->where = 0;

  return TRUE;
}