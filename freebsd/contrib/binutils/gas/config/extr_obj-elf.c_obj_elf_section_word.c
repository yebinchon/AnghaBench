
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SHF_ALLOC ;
 int SHF_EXECINSTR ;
 int SHF_TLS ;
 int SHF_WRITE ;
 int _ (char*) ;
 int as_warn (int ) ;
 int md_elf_section_word (char*,size_t) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static int
obj_elf_section_word (char *str, size_t len)
{
  if (len == 5 && strncmp (str, "write", 5) == 0)
    return SHF_WRITE;
  if (len == 5 && strncmp (str, "alloc", 5) == 0)
    return SHF_ALLOC;
  if (len == 9 && strncmp (str, "execinstr", 9) == 0)
    return SHF_EXECINSTR;
  if (len == 3 && strncmp (str, "tls", 3) == 0)
    return SHF_TLS;
  as_warn (_("unrecognized section attribute"));
  return 0;
}
