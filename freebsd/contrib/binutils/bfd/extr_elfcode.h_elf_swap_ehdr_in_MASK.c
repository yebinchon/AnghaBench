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
struct TYPE_7__ {int /*<<< orphan*/  e_shstrndx; int /*<<< orphan*/  e_shnum; int /*<<< orphan*/  e_shentsize; int /*<<< orphan*/  e_phnum; int /*<<< orphan*/  e_phentsize; int /*<<< orphan*/  e_ehsize; int /*<<< orphan*/  e_flags; int /*<<< orphan*/  e_shoff; int /*<<< orphan*/  e_phoff; int /*<<< orphan*/  e_entry; int /*<<< orphan*/  e_version; int /*<<< orphan*/  e_machine; int /*<<< orphan*/  e_type; int /*<<< orphan*/  e_ident; } ;
struct TYPE_6__ {void* e_shstrndx; void* e_shnum; void* e_shentsize; void* e_phnum; void* e_phentsize; void* e_ehsize; void* e_flags; void* e_shoff; void* e_phoff; void* e_entry; void* e_version; void* e_machine; void* e_type; int /*<<< orphan*/  e_ident; } ;
typedef  TYPE_1__ Elf_Internal_Ehdr ;
typedef  TYPE_2__ Elf_External_Ehdr ;

/* Variables and functions */
 int /*<<< orphan*/  EI_NIDENT ; 
 void* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6 (bfd *abfd,
		  const Elf_External_Ehdr *src,
		  Elf_Internal_Ehdr *dst)
{
  int signed_vma = FUNC4 (abfd)->sign_extend_vma;
  FUNC5 (dst->e_ident, src->e_ident, EI_NIDENT);
  dst->e_type = FUNC0 (abfd, src->e_type);
  dst->e_machine = FUNC0 (abfd, src->e_machine);
  dst->e_version = FUNC1 (abfd, src->e_version);
  if (signed_vma)
    dst->e_entry = FUNC2 (abfd, src->e_entry);
  else
    dst->e_entry = FUNC3 (abfd, src->e_entry);
  dst->e_phoff = FUNC3 (abfd, src->e_phoff);
  dst->e_shoff = FUNC3 (abfd, src->e_shoff);
  dst->e_flags = FUNC1 (abfd, src->e_flags);
  dst->e_ehsize = FUNC0 (abfd, src->e_ehsize);
  dst->e_phentsize = FUNC0 (abfd, src->e_phentsize);
  dst->e_phnum = FUNC0 (abfd, src->e_phnum);
  dst->e_shentsize = FUNC0 (abfd, src->e_shentsize);
  dst->e_shnum = FUNC0 (abfd, src->e_shnum);
  dst->e_shstrndx = FUNC0 (abfd, src->e_shstrndx);
}