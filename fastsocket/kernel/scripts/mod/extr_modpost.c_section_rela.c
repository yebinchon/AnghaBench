
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct elf_info {TYPE_2__* symtab_start; TYPE_1__* hdr; } ;
struct TYPE_12__ {unsigned int r_offset; unsigned int r_info; unsigned int r_addend; } ;
struct TYPE_11__ {int sh_offset; int sh_size; } ;
struct TYPE_10__ {scalar_t__ st_shndx; } ;
struct TYPE_9__ {scalar_t__ e_machine; } ;
typedef TYPE_2__ Elf_Sym ;
typedef TYPE_3__ Elf_Shdr ;
typedef TYPE_4__ Elf_Rela ;


 unsigned int ELF64_MIPS_R_SYM (unsigned int) ;
 unsigned int ELF64_MIPS_R_TYPE (unsigned int) ;
 unsigned int ELF64_R_INFO (unsigned int,unsigned int) ;
 unsigned int ELF_R_SYM (unsigned int) ;
 scalar_t__ EM_MIPS ;
 scalar_t__ SHN_LORESERVE ;
 void* TO_NATIVE (unsigned int) ;
 int check_section_mismatch (char const*,struct elf_info*,TYPE_4__*,TYPE_2__*,char const*) ;
 scalar_t__ match (char const*,int ) ;
 char* sech_name (struct elf_info*,TYPE_3__*) ;
 int section_white_list ;
 int strlen (char*) ;

__attribute__((used)) static void section_rela(const char *modname, struct elf_info *elf,
                         Elf_Shdr *sechdr)
{
 Elf_Sym *sym;
 Elf_Rela *rela;
 Elf_Rela r;
 unsigned int r_sym;
 const char *fromsec;

 Elf_Rela *start = (void *)elf->hdr + sechdr->sh_offset;
 Elf_Rela *stop = (void *)start + sechdr->sh_size;

 fromsec = sech_name(elf, sechdr);
 fromsec += strlen(".rela");

 if (match(fromsec, section_white_list))
  return;

 for (rela = start; rela < stop; rela++) {
  r.r_offset = TO_NATIVE(rela->r_offset);

  if (elf->hdr->e_machine == EM_MIPS) {
   unsigned int r_typ;
   r_sym = ELF64_MIPS_R_SYM(rela->r_info);
   r_sym = TO_NATIVE(r_sym);
   r_typ = ELF64_MIPS_R_TYPE(rela->r_info);
   r.r_info = ELF64_R_INFO(r_sym, r_typ);
  } else {
   r.r_info = TO_NATIVE(rela->r_info);
   r_sym = ELF_R_SYM(r.r_info);
  }




  r.r_addend = TO_NATIVE(rela->r_addend);
  sym = elf->symtab_start + r_sym;

  if (sym->st_shndx >= SHN_LORESERVE)
   continue;
  check_section_mismatch(modname, elf, &r, sym, fromsec);
 }
}
