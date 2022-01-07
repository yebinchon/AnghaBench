
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* e_ident; } ;
struct readelf {int options; int dw_decode; int dw_read; TYPE_1__ ehdr; int elf; int ec; } ;


 size_t EI_DATA ;
 int ELFCLASSNONE ;
 scalar_t__ ELFDATA2MSB ;
 int RE_AA ;
 int RE_D ;
 int RE_G ;
 int RE_H ;
 int RE_II ;
 int RE_L ;
 int RE_N ;
 int RE_P ;
 int RE_R ;
 int RE_S ;
 int RE_SS ;
 int RE_VV ;
 int RE_W ;
 int RE_X ;
 int _decode_lsb ;
 int _decode_msb ;
 int _read_lsb ;
 int _read_msb ;
 int dump_arch_specific_info (struct readelf*) ;
 int dump_dwarf (struct readelf*) ;
 int dump_dynamic (struct readelf*) ;
 int dump_ehdr (struct readelf*) ;
 int dump_hash (struct readelf*) ;
 int dump_notes (struct readelf*) ;
 int dump_phdr (struct readelf*) ;
 int dump_reloc (struct readelf*) ;
 int dump_section_groups (struct readelf*) ;
 int dump_shdr (struct readelf*) ;
 int dump_symtabs (struct readelf*) ;
 int dump_ver (struct readelf*) ;
 int elf_errmsg (int) ;
 int gelf_getclass (int ) ;
 int * gelf_getehdr (int ,TYPE_1__*) ;
 int hex_dump (struct readelf*) ;
 int load_sections (struct readelf*) ;
 int search_ver (struct readelf*) ;
 int str_dump (struct readelf*) ;
 int unload_sections (struct readelf*) ;
 int warnx (char*,int ) ;

__attribute__((used)) static void
dump_elf(struct readelf *re)
{


 if (gelf_getehdr(re->elf, &re->ehdr) == ((void*)0)) {
  warnx("gelf_getehdr failed: %s", elf_errmsg(-1));
  return;
 }
 if ((re->ec = gelf_getclass(re->elf)) == ELFCLASSNONE) {
  warnx("gelf_getclass failed: %s", elf_errmsg(-1));
  return;
 }
 if (re->ehdr.e_ident[EI_DATA] == ELFDATA2MSB) {
  re->dw_read = _read_msb;
  re->dw_decode = _decode_msb;
 } else {
  re->dw_read = _read_lsb;
  re->dw_decode = _decode_lsb;
 }

 if (re->options & ~RE_H)
  load_sections(re);
 if ((re->options & RE_VV) || (re->options & RE_S))
  search_ver(re);
 if (re->options & RE_H)
  dump_ehdr(re);
 if (re->options & RE_L)
  dump_phdr(re);
 if (re->options & RE_SS)
  dump_shdr(re);
 if (re->options & RE_G)
  dump_section_groups(re);
 if (re->options & RE_D)
  dump_dynamic(re);
 if (re->options & RE_R)
  dump_reloc(re);
 if (re->options & RE_S)
  dump_symtabs(re);
 if (re->options & RE_N)
  dump_notes(re);
 if (re->options & RE_II)
  dump_hash(re);
 if (re->options & RE_X)
  hex_dump(re);
 if (re->options & RE_P)
  str_dump(re);
 if (re->options & RE_VV)
  dump_ver(re);
 if (re->options & RE_AA)
  dump_arch_specific_info(re);
 if (re->options & RE_W)
  dump_dwarf(re);
 if (re->options & ~RE_H)
  unload_sections(re);
}
