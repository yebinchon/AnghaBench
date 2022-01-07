
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {unsigned int e_phnum; int e_phentsize; int e_phoff; } ;
struct TYPE_8__ {int p_align; int p_flags; int p_memsz; int p_filesz; int p_paddr; int p_vaddr; int p_offset; int p_type; } ;
struct TYPE_7__ {void* p_align; void* p_flags; void* p_memsz; void* p_filesz; void* p_paddr; void* p_vaddr; void* p_offset; void* p_type; } ;
typedef int FILE ;
typedef TYPE_1__ Elf_Internal_Phdr ;
typedef TYPE_2__ Elf32_External_Phdr ;


 void* BYTE_GET (int ) ;
 int _ (char*) ;
 TYPE_6__ elf_header ;
 int free (TYPE_2__*) ;
 TYPE_2__* get_data (int *,int *,int ,int ,unsigned int,int ) ;

__attribute__((used)) static int
get_32bit_program_headers (FILE *file, Elf_Internal_Phdr *program_headers)
{
  Elf32_External_Phdr *phdrs;
  Elf32_External_Phdr *external;
  Elf_Internal_Phdr *internal;
  unsigned int i;

  phdrs = get_data (((void*)0), file, elf_header.e_phoff,
      elf_header.e_phentsize, elf_header.e_phnum,
      _("program headers"));
  if (!phdrs)
    return 0;

  for (i = 0, internal = program_headers, external = phdrs;
       i < elf_header.e_phnum;
       i++, internal++, external++)
    {
      internal->p_type = BYTE_GET (external->p_type);
      internal->p_offset = BYTE_GET (external->p_offset);
      internal->p_vaddr = BYTE_GET (external->p_vaddr);
      internal->p_paddr = BYTE_GET (external->p_paddr);
      internal->p_filesz = BYTE_GET (external->p_filesz);
      internal->p_memsz = BYTE_GET (external->p_memsz);
      internal->p_flags = BYTE_GET (external->p_flags);
      internal->p_align = BYTE_GET (external->p_align);
    }

  free (phdrs);

  return 1;
}
