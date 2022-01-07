
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__ e_machine; int e_shnum; scalar_t__* e_ident; } ;
struct TYPE_15__ {int sh_size; scalar_t__ sh_type; int sh_link; int sh_offset; int sh_info; } ;
struct TYPE_14__ {int r_offset; int r_info; int r_addend; int st_info; } ;
typedef TYPE_1__ Elf_Internal_Sym ;
typedef TYPE_2__ Elf_Internal_Shdr ;
typedef TYPE_1__ Elf_Internal_Rela ;


 size_t EI_DATA ;
 scalar_t__ ELF32_R_SYM (int) ;
 scalar_t__ ELF32_ST_TYPE (int ) ;
 scalar_t__ ELF64_R_SYM (int) ;
 scalar_t__ ELF64_ST_TYPE (int ) ;
 scalar_t__ ELFDATA2MSB ;
 scalar_t__ EM_MIPS ;
 scalar_t__ EM_SH ;
 TYPE_1__* GET_ELF_SYMBOLS (void*,TYPE_2__*) ;
 TYPE_2__* SECTION_HEADER (int ) ;
 scalar_t__ SECTION_HEADER_INDEX (int ) ;
 int SECTION_NAME (TYPE_2__*) ;
 scalar_t__ SHT_RELA ;
 scalar_t__ STT_NOTYPE ;
 scalar_t__ STT_OBJECT ;
 scalar_t__ STT_SECTION ;
 int _ (char*) ;
 int byte_put (unsigned char*,int ,unsigned int) ;
 TYPE_8__ elf_header ;
 int free (TYPE_1__*) ;
 unsigned int get_reloc_size (TYPE_1__*) ;
 unsigned long get_symbol_type (scalar_t__) ;
 scalar_t__ is_32bit_elf ;
 int is_relocatable ;
 TYPE_2__* section_headers ;
 int slurp_rela_relocs (void*,int ,scalar_t__,TYPE_1__**,unsigned long*) ;
 int warn (int ,unsigned long,int ) ;

__attribute__((used)) static int
debug_apply_rela_addends (void *file,
     Elf_Internal_Shdr *section,
     unsigned char *start)
{
  Elf_Internal_Shdr *relsec;
  unsigned char *end = start + section->sh_size;

  if (!is_relocatable)
    return 1;


  if (elf_header.e_machine == EM_SH)
    return 0;

  for (relsec = section_headers;
       relsec < section_headers + elf_header.e_shnum;
       ++relsec)
    {
      unsigned long nrelas;
      Elf_Internal_Rela *rela, *rp;
      Elf_Internal_Shdr *symsec;
      Elf_Internal_Sym *symtab;
      Elf_Internal_Sym *sym;

      if (relsec->sh_type != SHT_RELA
   || SECTION_HEADER_INDEX (relsec->sh_info) >= elf_header.e_shnum
   || SECTION_HEADER (relsec->sh_info) != section
   || relsec->sh_size == 0
   || SECTION_HEADER_INDEX (relsec->sh_link) >= elf_header.e_shnum)
 continue;

      if (!slurp_rela_relocs (file, relsec->sh_offset, relsec->sh_size,
         &rela, &nrelas))
 return 0;

      symsec = SECTION_HEADER (relsec->sh_link);
      symtab = GET_ELF_SYMBOLS (file, symsec);

      for (rp = rela; rp < rela + nrelas; ++rp)
 {
   unsigned char *loc;
   unsigned int reloc_size;

   reloc_size = get_reloc_size (rp);
   if (reloc_size == 0)
     {
       warn (_("skipping relocation of unknown size against offset 0x%lx in section %s\n"),
      (unsigned long) rp->r_offset,
      SECTION_NAME (section));
       continue;
     }

   loc = start + rp->r_offset;
   if ((loc + reloc_size) > end)
     {
       warn (_("skipping invalid relocation offset 0x%lx in section %s\n"),
      (unsigned long) rp->r_offset,
      SECTION_NAME (section));
       continue;
     }

   if (is_32bit_elf)
     {
       sym = symtab + ELF32_R_SYM (rp->r_info);

       if (ELF32_R_SYM (rp->r_info) != 0
    && ELF32_ST_TYPE (sym->st_info) != STT_SECTION



    && ELF32_ST_TYPE (sym->st_info) != STT_NOTYPE



    && ELF32_ST_TYPE (sym->st_info) != STT_OBJECT)
  {
    warn (_("skipping unexpected symbol type %s in relocation in section .rela%s\n"),
   get_symbol_type (ELF32_ST_TYPE (sym->st_info)),
   SECTION_NAME (section));
    continue;
  }
     }
   else
     {




       if (elf_header.e_machine == EM_MIPS
    && elf_header.e_ident[EI_DATA] != ELFDATA2MSB)
  rp->r_info = (((rp->r_info & 0xffffffff) << 32)
         | ((rp->r_info >> 56) & 0xff)
         | ((rp->r_info >> 40) & 0xff00)
         | ((rp->r_info >> 24) & 0xff0000)
         | ((rp->r_info >> 8) & 0xff000000));

       sym = symtab + ELF64_R_SYM (rp->r_info);

       if (ELF64_R_SYM (rp->r_info) != 0
    && ELF64_ST_TYPE (sym->st_info) != STT_SECTION
    && ELF64_ST_TYPE (sym->st_info) != STT_NOTYPE
    && ELF64_ST_TYPE (sym->st_info) != STT_OBJECT)
  {
    warn (_("skipping unexpected symbol type %s in relocation in section .rela.%s\n"),
   get_symbol_type (ELF64_ST_TYPE (sym->st_info)),
   SECTION_NAME (section));
    continue;
  }
     }

   byte_put (loc, rp->r_addend, reloc_size);
 }

      free (symtab);
      free (rela);
      break;
    }
  return 1;
}
