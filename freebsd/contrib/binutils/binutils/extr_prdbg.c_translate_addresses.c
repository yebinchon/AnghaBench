
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd ;
typedef int asymbol ;
typedef int FILE ;


 int FALSE ;
 int bfd_map_over_sections (int *,int ,int **) ;
 int bfd_scan_vma (char*,int *,int) ;
 int find_address_in_section ;
 int found ;
 int fprintf (int *,char*,...) ;
 int line ;
 int pc ;

__attribute__((used)) static void
translate_addresses (bfd *abfd, char *addr_hex, FILE *f, asymbol **syms)
{
  pc = bfd_scan_vma (addr_hex, ((void*)0), 16);
  found = FALSE;
  bfd_map_over_sections (abfd, find_address_in_section, syms);

  if (! found)
    fprintf (f, "??");
  else
    fprintf (f, "%u", line);
}
