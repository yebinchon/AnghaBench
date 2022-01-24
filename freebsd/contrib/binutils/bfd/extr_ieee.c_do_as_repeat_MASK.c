#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bfd_vma ;
typedef  int bfd_byte ;
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_8__ {int flags; } ;
typedef  TYPE_1__ bfd ;
struct TYPE_9__ {scalar_t__ size; int /*<<< orphan*/  symbol; scalar_t__ lma; scalar_t__ index; } ;
typedef  TYPE_2__ asection ;

/* Variables and functions */
 int EXEC_P ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ IEEE_SECTION_NUMBER_BASE ; 
 int /*<<< orphan*/  TRUE ; 
 int ieee_load_constant_bytes_enum ; 
 int ieee_repeat_data_enum ; 
 int ieee_set_current_pc_enum ; 
 int ieee_set_current_section_enum ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,scalar_t__) ; 

__attribute__((used)) static bfd_boolean
FUNC3 (bfd *abfd, asection *s)
{
  if (s->size)
    {
      if (! FUNC0 (abfd, ieee_set_current_section_enum)
	  || ! FUNC0 (abfd,
				(bfd_byte) (s->index
					    + IEEE_SECTION_NUMBER_BASE))
	  || ! FUNC0 (abfd, ieee_set_current_pc_enum >> 8)
	  || ! FUNC0 (abfd, ieee_set_current_pc_enum & 0xff)
	  || ! FUNC0 (abfd,
				(bfd_byte) (s->index
					    + IEEE_SECTION_NUMBER_BASE)))
	return FALSE;

      if ((abfd->flags & EXEC_P) != 0)
	{
	  if (! FUNC2 (abfd, s->lma))
	    return FALSE;
	}
      else
	{
	  if (! FUNC1 (abfd, (bfd_vma) 0, s->symbol, 0, 0))
	    return FALSE;
	}

      if (! FUNC0 (abfd, ieee_repeat_data_enum)
	  || ! FUNC2 (abfd, s->size)
	  || ! FUNC0 (abfd, ieee_load_constant_bytes_enum)
	  || ! FUNC0 (abfd, 1)
	  || ! FUNC0 (abfd, 0))
	return FALSE;
    }

  return TRUE;
}