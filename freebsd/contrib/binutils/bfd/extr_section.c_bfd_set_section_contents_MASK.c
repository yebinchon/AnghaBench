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
typedef  TYPE_1__* sec_ptr ;
typedef  scalar_t__ file_ptr ;
typedef  scalar_t__ bfd_size_type ;
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_11__ {int /*<<< orphan*/  output_has_begun; } ;
typedef  TYPE_2__ bfd ;
struct TYPE_10__ {scalar_t__ size; void const* contents; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FALSE ; 
 int SEC_HAS_CONTENTS ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  _bfd_set_section_contents ; 
 int /*<<< orphan*/  bfd_error_bad_value ; 
 int /*<<< orphan*/  bfd_error_invalid_operation ; 
 int /*<<< orphan*/  bfd_error_no_contents ; 
 int FUNC1 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (void const*,void const*,size_t) ; 

bfd_boolean
FUNC5 (bfd *abfd,
			  sec_ptr section,
			  const void *location,
			  file_ptr offset,
			  bfd_size_type count)
{
  bfd_size_type sz;

  if (!(FUNC1 (abfd, section) & SEC_HAS_CONTENTS))
    {
      FUNC2 (bfd_error_no_contents);
      return FALSE;
    }

  sz = section->size;
  if ((bfd_size_type) offset > sz
      || count > sz
      || offset + count > sz
      || count != (size_t) count)
    {
      FUNC2 (bfd_error_bad_value);
      return FALSE;
    }

  if (!FUNC3 (abfd))
    {
      FUNC2 (bfd_error_invalid_operation);
      return FALSE;
    }

  /* Record a copy of the data in memory if desired.  */
  if (section->contents
      && location != section->contents + offset)
    FUNC4 (section->contents + offset, location, (size_t) count);

  if (FUNC0 (abfd, _bfd_set_section_contents,
		(abfd, section, location, offset, count)))
    {
      abfd->output_has_begun = TRUE;
      return TRUE;
    }

  return FALSE;
}