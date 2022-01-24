#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct elf_backend_data {scalar_t__ (* elf_backend_section_from_bfd_section ) (int /*<<< orphan*/ *,struct bfd_section*,int*) ;} ;
struct bfd_section {int dummy; } ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_2__ {scalar_t__ this_idx; } ;

/* Variables and functions */
 int SHN_ABS ; 
 int SHN_COMMON ; 
 int SHN_UNDEF ; 
 int /*<<< orphan*/  bfd_error_nonrepresentable_section ; 
 scalar_t__ FUNC0 (struct bfd_section*) ; 
 scalar_t__ FUNC1 (struct bfd_section*) ; 
 scalar_t__ FUNC2 (struct bfd_section*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (struct bfd_section*) ; 
 struct elf_backend_data* FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,struct bfd_section*,int*) ; 

int
FUNC7 (bfd *abfd, struct bfd_section *asect)
{
  const struct elf_backend_data *bed;
  int index;

  if (FUNC4 (asect) != NULL
      && FUNC4 (asect)->this_idx != 0)
    return FUNC4 (asect)->this_idx;

  if (FUNC0 (asect))
    index = SHN_ABS;
  else if (FUNC1 (asect))
    index = SHN_COMMON;
  else if (FUNC2 (asect))
    index = SHN_UNDEF;
  else
    index = -1;

  bed = FUNC5 (abfd);
  if (bed->elf_backend_section_from_bfd_section)
    {
      int retval = index;

      if ((*bed->elf_backend_section_from_bfd_section) (abfd, asect, &retval))
	return retval;
    }

  if (index == -1)
    FUNC3 (bfd_error_nonrepresentable_section);

  return index;
}