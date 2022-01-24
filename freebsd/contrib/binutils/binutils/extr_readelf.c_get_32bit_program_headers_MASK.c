#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {unsigned int e_phnum; int /*<<< orphan*/  e_phentsize; int /*<<< orphan*/  e_phoff; } ;
struct TYPE_8__ {int /*<<< orphan*/  p_align; int /*<<< orphan*/  p_flags; int /*<<< orphan*/  p_memsz; int /*<<< orphan*/  p_filesz; int /*<<< orphan*/  p_paddr; int /*<<< orphan*/  p_vaddr; int /*<<< orphan*/  p_offset; int /*<<< orphan*/  p_type; } ;
struct TYPE_7__ {void* p_align; void* p_flags; void* p_memsz; void* p_filesz; void* p_paddr; void* p_vaddr; void* p_offset; void* p_type; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_1__ Elf_Internal_Phdr ;
typedef  TYPE_2__ Elf32_External_Phdr ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_6__ elf_header ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4 (FILE *file, Elf_Internal_Phdr *program_headers)
{
  Elf32_External_Phdr *phdrs;
  Elf32_External_Phdr *external;
  Elf_Internal_Phdr *internal;
  unsigned int i;

  phdrs = FUNC3 (NULL, file, elf_header.e_phoff,
		    elf_header.e_phentsize, elf_header.e_phnum,
		    FUNC1("program headers"));
  if (!phdrs)
    return 0;

  for (i = 0, internal = program_headers, external = phdrs;
       i < elf_header.e_phnum;
       i++, internal++, external++)
    {
      internal->p_type   = FUNC0 (external->p_type);
      internal->p_offset = FUNC0 (external->p_offset);
      internal->p_vaddr  = FUNC0 (external->p_vaddr);
      internal->p_paddr  = FUNC0 (external->p_paddr);
      internal->p_filesz = FUNC0 (external->p_filesz);
      internal->p_memsz  = FUNC0 (external->p_memsz);
      internal->p_flags  = FUNC0 (external->p_flags);
      internal->p_align  = FUNC0 (external->p_align);
    }

  FUNC2 (phdrs);

  return 1;
}