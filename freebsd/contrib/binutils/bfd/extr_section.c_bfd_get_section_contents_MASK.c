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
typedef  TYPE_1__* sec_ptr ;
typedef  scalar_t__ file_ptr ;
typedef  scalar_t__ bfd_size_type ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_3__ {int flags; scalar_t__ rawsize; scalar_t__ size; scalar_t__ contents; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int SEC_CONSTRUCTOR ; 
 int SEC_HAS_CONTENTS ; 
 int SEC_IN_MEMORY ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  _bfd_get_section_contents ; 
 int /*<<< orphan*/  bfd_error_bad_value ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,size_t) ; 

bfd_boolean
FUNC4 (bfd *abfd,
			  sec_ptr section,
			  void *location,
			  file_ptr offset,
			  bfd_size_type count)
{
  bfd_size_type sz;

  if (section->flags & SEC_CONSTRUCTOR)
    {
      FUNC3 (location, 0, (size_t) count);
      return TRUE;
    }

  sz = section->rawsize ? section->rawsize : section->size;
  if ((bfd_size_type) offset > sz
      || count > sz
      || offset + count > sz
      || count != (size_t) count)
    {
      FUNC1 (bfd_error_bad_value);
      return FALSE;
    }

  if (count == 0)
    /* Don't bother.  */
    return TRUE;

  if ((section->flags & SEC_HAS_CONTENTS) == 0)
    {
      FUNC3 (location, 0, (size_t) count);
      return TRUE;
    }

  if ((section->flags & SEC_IN_MEMORY) != 0)
    {
      FUNC2 (location, section->contents + offset, (size_t) count);
      return TRUE;
    }

  return FUNC0 (abfd, _bfd_get_section_contents,
		   (abfd, section, location, offset, count));
}