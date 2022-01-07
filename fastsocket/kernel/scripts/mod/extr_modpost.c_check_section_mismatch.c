
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct elf_info {int dummy; } ;
typedef enum mismatch { ____Placeholder_mismatch } mismatch ;
struct TYPE_11__ {int r_offset; int r_addend; } ;
struct TYPE_10__ {int st_shndx; } ;
typedef TYPE_1__ Elf_Sym ;
typedef TYPE_2__ Elf_Rela ;


 int NO_MISMATCH ;
 TYPE_1__* find_elf_symbol (struct elf_info*,int ,TYPE_1__*) ;
 TYPE_1__* find_elf_symbol2 (struct elf_info*,int ,char const*) ;
 int is_function (TYPE_1__*) ;
 int report_sec_mismatch (char const*,int,char const*,int ,char const*,int ,char const*,char const*,int ) ;
 char* sec_name (struct elf_info*,int ) ;
 scalar_t__ secref_whitelist (char const*,char const*,char const*,char const*) ;
 int section_mismatch (char const*,char const*) ;
 char* sym_name (struct elf_info*,TYPE_1__*) ;

__attribute__((used)) static void check_section_mismatch(const char *modname, struct elf_info *elf,
                                   Elf_Rela *r, Elf_Sym *sym, const char *fromsec)
{
 const char *tosec;
 enum mismatch mismatch;

 tosec = sec_name(elf, sym->st_shndx);
 mismatch = section_mismatch(fromsec, tosec);
 if (mismatch != NO_MISMATCH) {
  Elf_Sym *to;
  Elf_Sym *from;
  const char *tosym;
  const char *fromsym;

  from = find_elf_symbol2(elf, r->r_offset, fromsec);
  fromsym = sym_name(elf, from);
  to = find_elf_symbol(elf, r->r_addend, sym);
  tosym = sym_name(elf, to);


  if (secref_whitelist(fromsec, fromsym, tosec, tosym)) {
   report_sec_mismatch(modname, mismatch,
      fromsec, r->r_offset, fromsym,
      is_function(from), tosec, tosym,
      is_function(to));
  }
 }
}
