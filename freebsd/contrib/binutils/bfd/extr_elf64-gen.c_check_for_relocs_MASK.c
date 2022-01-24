#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_5__ {int flags; } ;
typedef  TYPE_1__ asection ;
struct TYPE_6__ {int /*<<< orphan*/  e_machine; } ;
typedef  TYPE_2__ Elf_Internal_Ehdr ;

/* Variables and functions */
 int SEC_RELOC ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bfd_error_wrong_format ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4 (bfd * abfd, asection * o, void * failed)
{
  if ((o->flags & SEC_RELOC) != 0)
    {
      Elf_Internal_Ehdr *ehdrp;

      ehdrp = FUNC3 (abfd);
      FUNC1 (FUNC0("%B: Relocations in generic ELF (EM: %d)"),
			  abfd, ehdrp->e_machine);

      FUNC2 (bfd_error_wrong_format);
      * (bfd_boolean *) failed = TRUE;
    }
}