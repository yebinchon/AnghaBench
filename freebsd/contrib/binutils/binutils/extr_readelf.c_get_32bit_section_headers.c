
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int e_shentsize; int e_shoff; } ;
struct TYPE_9__ {int sh_entsize; int sh_addralign; int sh_info; int sh_link; int sh_size; int sh_offset; int sh_addr; int sh_flags; int sh_type; int sh_name; } ;
struct TYPE_8__ {void* sh_entsize; void* sh_addralign; void* sh_info; void* sh_link; void* sh_size; void* sh_offset; void* sh_addr; void* sh_flags; void* sh_type; void* sh_name; } ;
typedef int FILE ;
typedef TYPE_1__ Elf_Internal_Shdr ;
typedef TYPE_2__ Elf32_External_Shdr ;


 void* BYTE_GET (int ) ;
 int _ (char*) ;
 TYPE_1__* cmalloc (unsigned int,int) ;
 TYPE_6__ elf_header ;
 int error (int ) ;
 int free (TYPE_2__*) ;
 TYPE_2__* get_data (int *,int *,int ,int ,unsigned int,int ) ;
 TYPE_1__* section_headers ;

__attribute__((used)) static int
get_32bit_section_headers (FILE *file, unsigned int num)
{
  Elf32_External_Shdr *shdrs;
  Elf_Internal_Shdr *internal;
  unsigned int i;

  shdrs = get_data (((void*)0), file, elf_header.e_shoff,
      elf_header.e_shentsize, num, _("section headers"));
  if (!shdrs)
    return 0;

  section_headers = cmalloc (num, sizeof (Elf_Internal_Shdr));

  if (section_headers == ((void*)0))
    {
      error (_("Out of memory\n"));
      return 0;
    }

  for (i = 0, internal = section_headers;
       i < num;
       i++, internal++)
    {
      internal->sh_name = BYTE_GET (shdrs[i].sh_name);
      internal->sh_type = BYTE_GET (shdrs[i].sh_type);
      internal->sh_flags = BYTE_GET (shdrs[i].sh_flags);
      internal->sh_addr = BYTE_GET (shdrs[i].sh_addr);
      internal->sh_offset = BYTE_GET (shdrs[i].sh_offset);
      internal->sh_size = BYTE_GET (shdrs[i].sh_size);
      internal->sh_link = BYTE_GET (shdrs[i].sh_link);
      internal->sh_info = BYTE_GET (shdrs[i].sh_info);
      internal->sh_addralign = BYTE_GET (shdrs[i].sh_addralign);
      internal->sh_entsize = BYTE_GET (shdrs[i].sh_entsize);
    }

  free (shdrs);

  return 1;
}
