
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bfd_map_over_sections (int ,int ,int *) ;
 int coff_adjust_section_syms ;
 int stdoutput ;

void
coff_frob_file_after_relocs (void)
{
  bfd_map_over_sections (stdoutput, coff_adjust_section_syms, ((void*)0));
}
