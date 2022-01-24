#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct bfd_elf_section_data {int dummy; } ;
typedef  TYPE_2__* sec_ptr ;
typedef  int file_ptr ;
typedef  int bfd_size_type ;
typedef  int /*<<< orphan*/  bfd_byte ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_8__ {int /*<<< orphan*/ * tdata; } ;
struct TYPE_10__ {TYPE_1__ u; } ;
struct TYPE_9__ {int size; void* used_by_bfd; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,void const*,int,int) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void const*,int) ; 
 TYPE_3__* FUNC5 (TYPE_2__*) ; 

bfd_boolean
FUNC6 (bfd *abfd, sec_ptr section,
				    const void *location,
				    file_ptr offset, bfd_size_type count)
{
  if (FUNC0 (section->name))
    {
      bfd_byte *c;

      if (FUNC3 (section) == NULL)
	{
	  bfd_size_type amt = sizeof (struct bfd_elf_section_data);
	  section->used_by_bfd = FUNC2 (abfd, amt);
	  if (FUNC3 (section) == NULL)
	    return FALSE;
	}
      c = FUNC5 (section)->u.tdata;
      if (c == NULL)
	{
	  c = FUNC2 (abfd, section->size);
	  if (c == NULL)
	    return FALSE;
	  FUNC5 (section)->u.tdata = c;
	}

      FUNC4 (c + offset, location, count);
    }

  return FUNC1 (abfd, section, location, offset,
					count);
}