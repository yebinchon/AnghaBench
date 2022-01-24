#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct internal_extra_pe_aouthdr {TYPE_1__* DataDirectory; } ;
typedef  int bfd_vma ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_8__ {int vma; int /*<<< orphan*/  flags; } ;
typedef  TYPE_2__ asection ;
struct TYPE_9__ {int virt_size; } ;
struct TYPE_7__ {int Size; int VirtualAddress; } ;

/* Variables and functions */
 int /*<<< orphan*/  SEC_DATA ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 

__attribute__((used)) static void
FUNC3 (bfd * abfd,
		struct internal_extra_pe_aouthdr *aout,
		int idx,
		char *name,
		bfd_vma base)
{
  asection *sec = FUNC0 (abfd, name);

  /* Add import directory information if it exists.  */
  if ((sec != NULL)
      && (FUNC1 (abfd, sec) != NULL)
      && (FUNC2 (abfd, sec) != NULL))
    {
      /* If data directory is empty, rva also should be 0.  */
      int size = FUNC2 (abfd, sec)->virt_size;
      aout->DataDirectory[idx].Size = size;

      if (size)
	{
	  aout->DataDirectory[idx].VirtualAddress =
	    (sec->vma - base) & 0xffffffff;
	  sec->flags |= SEC_DATA;
	}
    }
}