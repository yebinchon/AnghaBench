
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ehdr64 ;
typedef int ehdr32 ;
typedef int bfd_vma ;
struct TYPE_6__ {int* e_ident; scalar_t__ e_type; void* e_shoff; void* e_shstrndx; void* e_shnum; void* e_shentsize; void* e_phnum; void* e_phentsize; void* e_ehsize; void* e_flags; void* e_phoff; void* e_entry; void* e_version; void* e_machine; } ;
struct TYPE_5__ {int* e_type; int* e_machine; int* e_version; int* e_entry; int* e_phoff; int* e_shoff; int* e_flags; int* e_ehsize; int* e_phentsize; int* e_phnum; int* e_shentsize; int* e_shnum; int* e_shstrndx; } ;
struct TYPE_4__ {int* e_type; int* e_machine; int* e_version; int* e_entry; int* e_phoff; int* e_shoff; int* e_flags; int* e_ehsize; int* e_phentsize; int* e_phnum; int* e_shentsize; int* e_shnum; int* e_shstrndx; } ;
typedef int FILE ;
typedef TYPE_1__ Elf64_External_Ehdr ;
typedef TYPE_2__ Elf32_External_Ehdr ;


 void* BYTE_GET (int*) ;
 size_t EI_CLASS ;
 size_t EI_DATA ;
 scalar_t__ EI_NIDENT ;
 int ELFCLASS64 ;



 scalar_t__ ET_REL ;
 int _ (char*) ;
 int byte_get ;
 int byte_get_big_endian ;
 int byte_get_little_endian ;
 int byte_put ;
 int byte_put_big_endian ;
 int byte_put_little_endian ;
 TYPE_3__ elf_header ;
 int error (int ) ;
 int fread (int*,scalar_t__,int,int *) ;
 int get_32bit_section_headers (int *,int) ;
 int get_64bit_section_headers (int *,int) ;
 int is_32bit_elf ;
 int is_relocatable ;

__attribute__((used)) static int
get_file_header (FILE *file)
{

  if (fread (elf_header.e_ident, EI_NIDENT, 1, file) != 1)
    return 0;


  switch (elf_header.e_ident[EI_DATA])
    {
    default:
    case 128:
    case 130:
      byte_get = byte_get_little_endian;
      byte_put = byte_put_little_endian;
      break;
    case 129:
      byte_get = byte_get_big_endian;
      byte_put = byte_put_big_endian;
      break;
    }


  is_32bit_elf = (elf_header.e_ident[EI_CLASS] != ELFCLASS64);


  if (is_32bit_elf)
    {
      Elf32_External_Ehdr ehdr32;

      if (fread (ehdr32.e_type, sizeof (ehdr32) - EI_NIDENT, 1, file) != 1)
 return 0;

      elf_header.e_type = BYTE_GET (ehdr32.e_type);
      elf_header.e_machine = BYTE_GET (ehdr32.e_machine);
      elf_header.e_version = BYTE_GET (ehdr32.e_version);
      elf_header.e_entry = BYTE_GET (ehdr32.e_entry);
      elf_header.e_phoff = BYTE_GET (ehdr32.e_phoff);
      elf_header.e_shoff = BYTE_GET (ehdr32.e_shoff);
      elf_header.e_flags = BYTE_GET (ehdr32.e_flags);
      elf_header.e_ehsize = BYTE_GET (ehdr32.e_ehsize);
      elf_header.e_phentsize = BYTE_GET (ehdr32.e_phentsize);
      elf_header.e_phnum = BYTE_GET (ehdr32.e_phnum);
      elf_header.e_shentsize = BYTE_GET (ehdr32.e_shentsize);
      elf_header.e_shnum = BYTE_GET (ehdr32.e_shnum);
      elf_header.e_shstrndx = BYTE_GET (ehdr32.e_shstrndx);
    }
  else
    {
      Elf64_External_Ehdr ehdr64;





      if (sizeof (bfd_vma) < 8)
 {
   error (_("This instance of readelf has been built without support for a\n64 bit data type and so it cannot read 64 bit ELF files.\n"));

   return 0;
 }

      if (fread (ehdr64.e_type, sizeof (ehdr64) - EI_NIDENT, 1, file) != 1)
 return 0;

      elf_header.e_type = BYTE_GET (ehdr64.e_type);
      elf_header.e_machine = BYTE_GET (ehdr64.e_machine);
      elf_header.e_version = BYTE_GET (ehdr64.e_version);
      elf_header.e_entry = BYTE_GET (ehdr64.e_entry);
      elf_header.e_phoff = BYTE_GET (ehdr64.e_phoff);
      elf_header.e_shoff = BYTE_GET (ehdr64.e_shoff);
      elf_header.e_flags = BYTE_GET (ehdr64.e_flags);
      elf_header.e_ehsize = BYTE_GET (ehdr64.e_ehsize);
      elf_header.e_phentsize = BYTE_GET (ehdr64.e_phentsize);
      elf_header.e_phnum = BYTE_GET (ehdr64.e_phnum);
      elf_header.e_shentsize = BYTE_GET (ehdr64.e_shentsize);
      elf_header.e_shnum = BYTE_GET (ehdr64.e_shnum);
      elf_header.e_shstrndx = BYTE_GET (ehdr64.e_shstrndx);
    }

  if (elf_header.e_shoff)
    {


      if (is_32bit_elf)
 get_32bit_section_headers (file, 1);
      else
 get_64bit_section_headers (file, 1);
    }

  is_relocatable = elf_header.e_type == ET_REL;

  return 1;
}
