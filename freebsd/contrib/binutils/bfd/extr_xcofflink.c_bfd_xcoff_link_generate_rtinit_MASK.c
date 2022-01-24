#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct bfd_in_memory {scalar_t__ buffer; scalar_t__ size; } ;
typedef  int /*<<< orphan*/  bfd_size_type ;
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_4__ {scalar_t__ where; int /*<<< orphan*/  direction; int /*<<< orphan*/  format; int /*<<< orphan*/  flags; void* iostream; scalar_t__ link_next; } ;
typedef  TYPE_1__ bfd ;

/* Variables and functions */
 int /*<<< orphan*/  BFD_IN_MEMORY ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 struct bfd_in_memory* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bfd_object ; 
 int /*<<< orphan*/  bfd_unknown ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  read_direction ; 
 int /*<<< orphan*/  write_direction ; 

bfd_boolean
FUNC2 (bfd *abfd,
				const char *init,
				const char *fini,
				bfd_boolean rtld)
{
  struct bfd_in_memory *bim;

  bim = FUNC0 ((bfd_size_type) sizeof (* bim));
  if (bim == NULL)
    return FALSE;

  bim->size = 0;
  bim->buffer = 0;

  abfd->link_next = 0;
  abfd->format = bfd_object;
  abfd->iostream = (void *) bim;
  abfd->flags = BFD_IN_MEMORY;
  abfd->direction = write_direction;
  abfd->where = 0;

  if (! FUNC1 (abfd, init, fini, rtld))
    return FALSE;

  /* need to reset to unknown or it will not be read back in correctly */
  abfd->format = bfd_unknown;
  abfd->direction = read_direction;
  abfd->where = 0;

  return TRUE;
}