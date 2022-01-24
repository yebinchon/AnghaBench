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
struct elf_segment_map {scalar_t__ p_type; struct elf_segment_map* next; } ;
struct bfd_link_info {int dummy; } ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
typedef  int /*<<< orphan*/  asection ;
struct TYPE_2__ {struct elf_segment_map* segment_map; } ;

/* Variables and functions */
 scalar_t__ PT_DYNAMIC ; 
 struct elf_segment_map* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct bfd_link_info*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bfd_boolean
FUNC4 (bfd *abfd, 
				      struct bfd_link_info *info)
{
  struct elf_segment_map *m;
  asection *dynsec;

  /* BPABI shared libraries and executables should have a PT_DYNAMIC
     segment.  However, because the .dynamic section is not marked
     with SEC_LOAD, the generic ELF code will not create such a
     segment.  */
  dynsec = FUNC1 (abfd, ".dynamic");
  if (dynsec)
    {
      for (m = FUNC3 (abfd)->segment_map; m != NULL; m = m->next)
	if (m->p_type == PT_DYNAMIC)
	  break;

      if (m == NULL)
	{
	  m = FUNC0 (abfd, dynsec);
	  m->next = FUNC3 (abfd)->segment_map;
	  FUNC3 (abfd)->segment_map = m;
	}
    }

  /* Also call the generic arm routine.  */
  return FUNC2 (abfd, info);
}