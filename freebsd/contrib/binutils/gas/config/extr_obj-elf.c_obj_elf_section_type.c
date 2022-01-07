
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SHT_FINI_ARRAY ;
 int SHT_INIT_ARRAY ;
 int SHT_NOBITS ;
 int SHT_NOTE ;
 int SHT_PREINIT_ARRAY ;
 int SHT_PROGBITS ;
 int _ (char*) ;
 int as_warn (int ) ;
 int md_elf_section_type (char*,size_t) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static int
obj_elf_section_type (char *str, size_t len)
{
  if (len == 8 && strncmp (str, "progbits", 8) == 0)
    return SHT_PROGBITS;
  if (len == 6 && strncmp (str, "nobits", 6) == 0)
    return SHT_NOBITS;
  if (len == 4 && strncmp (str, "note", 4) == 0)
    return SHT_NOTE;
  if (len == 10 && strncmp (str, "init_array", 10) == 0)
    return SHT_INIT_ARRAY;
  if (len == 10 && strncmp (str, "fini_array", 10) == 0)
    return SHT_FINI_ARRAY;
  if (len == 13 && strncmp (str, "preinit_array", 13) == 0)
    return SHT_PREINIT_ARRAY;
  as_warn (_("unrecognized section type"));
  return 0;
}
