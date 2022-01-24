#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int bfd_size_type ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_5__ {int /*<<< orphan*/ * used_by_bfd; } ;
typedef  TYPE_1__ asection ;
typedef  int /*<<< orphan*/  _arm_elf_section_data ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static bfd_boolean
FUNC3 (bfd *abfd, asection *sec)
{
  if (!sec->used_by_bfd)
    {
      _arm_elf_section_data *sdata;
      bfd_size_type amt = sizeof (*sdata);

      sdata = FUNC1 (abfd, amt);
      if (sdata == NULL)
	return FALSE;
      sec->used_by_bfd = sdata;
    }

  FUNC2 (sec);

  return FUNC0 (abfd, sec);
}