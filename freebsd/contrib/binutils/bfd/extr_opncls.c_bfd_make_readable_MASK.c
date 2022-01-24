#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  void* bfd_boolean ;
struct TYPE_10__ {scalar_t__ any; } ;
struct TYPE_11__ {scalar_t__ direction; int flags; TYPE_1__ tdata; scalar_t__ outsymbols; scalar_t__ symcount; scalar_t__ sections; void* target_defaulted; void* mtime_set; void* cacheable; int /*<<< orphan*/ * usrdata; scalar_t__ section_count; void* output_has_begun; void* opened_once; scalar_t__ origin; int /*<<< orphan*/ * my_archive; int /*<<< orphan*/  format; scalar_t__ where; int /*<<< orphan*/ * arch_info; } ;
typedef  TYPE_2__ bfd ;

/* Variables and functions */
 int BFD_IN_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 void* FALSE ; 
 void* TRUE ; 
 int /*<<< orphan*/  _bfd_write_contents ; 
 int /*<<< orphan*/  _close_and_cleanup ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bfd_default_arch_struct ; 
 int /*<<< orphan*/  bfd_error_invalid_operation ; 
 int /*<<< orphan*/  bfd_object ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bfd_unknown ; 
 scalar_t__ read_direction ; 
 scalar_t__ write_direction ; 

bfd_boolean
FUNC5 (bfd *abfd)
{
  if (abfd->direction != write_direction || !(abfd->flags & BFD_IN_MEMORY))
    {
      FUNC4 (bfd_error_invalid_operation);
      return FALSE;
    }

  if (! FUNC1 (abfd, _bfd_write_contents, (abfd)))
    return FALSE;

  if (! FUNC0 (abfd, _close_and_cleanup, (abfd)))
    return FALSE;


  abfd->arch_info = &bfd_default_arch_struct;

  abfd->where = 0;
  abfd->format = bfd_unknown;
  abfd->my_archive = NULL;
  abfd->origin = 0;
  abfd->opened_once = FALSE;
  abfd->output_has_begun = FALSE;
  abfd->section_count = 0;
  abfd->usrdata = NULL;
  abfd->cacheable = FALSE;
  abfd->flags = BFD_IN_MEMORY;
  abfd->mtime_set = FALSE;

  abfd->target_defaulted = TRUE;
  abfd->direction = read_direction;
  abfd->sections = 0;
  abfd->symcount = 0;
  abfd->outsymbols = 0;
  abfd->tdata.any = 0;

  FUNC3 (abfd);
  FUNC2 (abfd, bfd_object);

  return TRUE;
}