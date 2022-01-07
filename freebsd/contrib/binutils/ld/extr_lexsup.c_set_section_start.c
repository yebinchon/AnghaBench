
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_vma ;


 int _ (char*) ;
 int bfd_scan_vma (char*,char const**,int) ;
 int einfo (int ,char*) ;
 int exp_intop (int ) ;
 int lang_section_start (char*,int ,int *) ;

__attribute__((used)) static void
set_section_start (char *sect, char *valstr)
{
  const char *end;
  bfd_vma val = bfd_scan_vma (valstr, &end, 16);
  if (*end)
    einfo (_("%P%F: invalid hex number `%s'\n"), valstr);
  lang_section_start (sect, exp_intop (val), ((void*)0));
}
