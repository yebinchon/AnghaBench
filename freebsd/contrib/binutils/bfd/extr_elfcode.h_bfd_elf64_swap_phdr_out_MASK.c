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
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_6__ {int /*<<< orphan*/  p_align; int /*<<< orphan*/  p_flags; int /*<<< orphan*/  p_memsz; int /*<<< orphan*/  p_filesz; int /*<<< orphan*/  p_paddr; int /*<<< orphan*/  p_vaddr; int /*<<< orphan*/  p_offset; int /*<<< orphan*/  p_type; } ;
struct TYPE_5__ {int /*<<< orphan*/  p_align; int /*<<< orphan*/  p_flags; int /*<<< orphan*/  p_memsz; int /*<<< orphan*/  p_filesz; int /*<<< orphan*/  p_paddr; int /*<<< orphan*/  p_vaddr; int /*<<< orphan*/  p_offset; int /*<<< orphan*/  p_type; } ;
typedef  TYPE_1__ Elf_Internal_Phdr ;
typedef  TYPE_2__ Elf_External_Phdr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2 (bfd *abfd,
		   const Elf_Internal_Phdr *src,
		   Elf_External_Phdr *dst)
{
  /* note that all elements of dst are *arrays of unsigned char* already...  */
  FUNC0 (abfd, src->p_type, dst->p_type);
  FUNC1 (abfd, src->p_offset, dst->p_offset);
  FUNC1 (abfd, src->p_vaddr, dst->p_vaddr);
  FUNC1 (abfd, src->p_paddr, dst->p_paddr);
  FUNC1 (abfd, src->p_filesz, dst->p_filesz);
  FUNC1 (abfd, src->p_memsz, dst->p_memsz);
  FUNC0 (abfd, src->p_flags, dst->p_flags);
  FUNC1 (abfd, src->p_align, dst->p_align);
}