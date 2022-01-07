
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int valueT ;
typedef int asection ;


 scalar_t__ IS_ELF ;
 int TARGET_OS ;
 int bfd_get_section_alignment (int ,int *) ;
 int stdoutput ;
 scalar_t__ strcmp (int ,char*) ;

valueT
md_section_align (asection *seg, valueT addr)
{
  int align = bfd_get_section_alignment (stdoutput, seg);

  if (IS_ELF)
    {




      if (strcmp (TARGET_OS, "elf") == 0)
        return addr;
      if (align > 4)
        align = 4;
    }

  return ((addr + (1 << align) - 1) & (-1 << align));
}
