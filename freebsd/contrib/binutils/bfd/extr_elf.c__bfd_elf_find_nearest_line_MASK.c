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
typedef  int /*<<< orphan*/  bfd_vma ;
typedef  scalar_t__ bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
typedef  int /*<<< orphan*/  asymbol ;
typedef  int /*<<< orphan*/  asection ;
struct TYPE_2__ {int /*<<< orphan*/  line_info; int /*<<< orphan*/  dwarf2_find_line_info; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const**,char const**,unsigned int*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const**,char const**,unsigned int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,char const**,char const**,unsigned int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const**,char const**) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 

bfd_boolean
FUNC5 (bfd *abfd,
			    asection *section,
			    asymbol **symbols,
			    bfd_vma offset,
			    const char **filename_ptr,
			    const char **functionname_ptr,
			    unsigned int *line_ptr)
{
  bfd_boolean found;

  if (FUNC0 (abfd, section, symbols, offset,
				     filename_ptr, functionname_ptr,
				     line_ptr))
    {
      if (!*functionname_ptr)
	FUNC3 (abfd, section, symbols, offset,
			   *filename_ptr ? NULL : filename_ptr,
			   functionname_ptr);

      return TRUE;
    }

  if (FUNC1 (abfd, section, symbols, offset,
				     filename_ptr, functionname_ptr,
				     line_ptr, 0,
				     &FUNC4 (abfd)->dwarf2_find_line_info))
    {
      if (!*functionname_ptr)
	FUNC3 (abfd, section, symbols, offset,
			   *filename_ptr ? NULL : filename_ptr,
			   functionname_ptr);

      return TRUE;
    }

  if (! FUNC2 (abfd, symbols, section, offset,
					     &found, filename_ptr,
					     functionname_ptr, line_ptr,
					     &FUNC4 (abfd)->line_info))
    return FALSE;
  if (found && (*functionname_ptr || *line_ptr))
    return TRUE;

  if (symbols == NULL)
    return FALSE;

  if (! FUNC3 (abfd, section, symbols, offset,
			   filename_ptr, functionname_ptr))
    return FALSE;

  *line_ptr = 0;
  return TRUE;
}