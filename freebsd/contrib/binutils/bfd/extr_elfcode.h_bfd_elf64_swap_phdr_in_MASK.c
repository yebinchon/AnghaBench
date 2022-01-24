#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_8__ {int sign_extend_vma; } ;
struct TYPE_7__ {int /*<<< orphan*/  p_align; int /*<<< orphan*/  p_memsz; int /*<<< orphan*/  p_filesz; int /*<<< orphan*/  p_paddr; int /*<<< orphan*/  p_vaddr; int /*<<< orphan*/  p_offset; int /*<<< orphan*/  p_flags; int /*<<< orphan*/  p_type; } ;
struct TYPE_6__ {void* p_align; void* p_memsz; void* p_filesz; void* p_paddr; void* p_vaddr; void* p_offset; void* p_flags; void* p_type; } ;
typedef  TYPE_1__ Elf_Internal_Phdr ;
typedef  TYPE_2__ Elf_External_Phdr ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4 (bfd *abfd,
		  const Elf_External_Phdr *src,
		  Elf_Internal_Phdr *dst)
{
  int signed_vma = FUNC3 (abfd)->sign_extend_vma;

  dst->p_type = FUNC0 (abfd, src->p_type);
  dst->p_flags = FUNC0 (abfd, src->p_flags);
  dst->p_offset = FUNC2 (abfd, src->p_offset);
  if (signed_vma)
    {
      dst->p_vaddr = FUNC1 (abfd, src->p_vaddr);
      dst->p_paddr = FUNC1 (abfd, src->p_paddr);
    }
  else
    {
      dst->p_vaddr = FUNC2 (abfd, src->p_vaddr);
      dst->p_paddr = FUNC2 (abfd, src->p_paddr);
    }
  dst->p_filesz = FUNC2 (abfd, src->p_filesz);
  dst->p_memsz = FUNC2 (abfd, src->p_memsz);
  dst->p_align = FUNC2 (abfd, src->p_align);
}