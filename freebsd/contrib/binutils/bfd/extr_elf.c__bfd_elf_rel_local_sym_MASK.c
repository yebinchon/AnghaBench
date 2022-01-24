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
typedef  scalar_t__ bfd_vma ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_8__ {scalar_t__ sec_info_type; } ;
typedef  TYPE_1__ asection ;
struct TYPE_10__ {int /*<<< orphan*/  sec_info; } ;
struct TYPE_9__ {scalar_t__ st_value; } ;
typedef  TYPE_2__ Elf_Internal_Sym ;

/* Variables and functions */
 scalar_t__ ELF_INFO_TYPE_MERGE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,TYPE_1__**,int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_3__* FUNC1 (TYPE_1__*) ; 

bfd_vma
FUNC2 (bfd *abfd,
			Elf_Internal_Sym *sym,
			asection **psec,
			bfd_vma addend)
{
  asection *sec = *psec;

  if (sec->sec_info_type != ELF_INFO_TYPE_MERGE)
    return sym->st_value + addend;

  return FUNC0 (abfd, psec,
				     FUNC1 (sec)->sec_info,
				     sym->st_value + addend);
}