#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* sec_ptr ;
typedef  int file_ptr ;
typedef  scalar_t__ bfd_size_type ;
typedef  int /*<<< orphan*/  bfd_byte ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_6__ {int /*<<< orphan*/ * data; } ;
struct TYPE_5__ {int flags; void* contents; scalar_t__ size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int SEC_DEBUGGING ; 
 int /*<<< orphan*/  TRUE ; 
 void* FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 TYPE_3__* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,unsigned int) ; 

__attribute__((used)) static bfd_boolean
FUNC4 (bfd *abfd,
			   sec_ptr section,
			   const void * location,
			   file_ptr offset,
			   bfd_size_type count)
{
  if ((section->flags & SEC_DEBUGGING) != 0)
    {
      if (section->contents == NULL)
	{
	  bfd_size_type size = section->size;
	  section->contents = FUNC0 (abfd, size);
	  if (section->contents == NULL)
	    return FALSE;
	}
      /* bfd_set_section_contents has already checked that everything
         is within range.  */
      FUNC3 (section->contents + offset, location, (size_t) count);
      return TRUE;
    }

  if (FUNC1 (section)->data == (bfd_byte *) NULL)
    {
      if (!FUNC2 (abfd))
	return FALSE;
    }
  FUNC3 ((void *) (FUNC1 (section)->data + offset),
	  (void *) location,
	  (unsigned int) count);
  return TRUE;
}