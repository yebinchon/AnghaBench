
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int e_shnum; } ;
typedef int Elf_Internal_Shdr ;


 int SECTION_NAME (int *) ;
 TYPE_1__ elf_header ;
 int * section_headers ;
 scalar_t__ streq (int ,char const*) ;

__attribute__((used)) static Elf_Internal_Shdr *
find_section (const char *name)
{
  unsigned int i;

  for (i = 0; i < elf_header.e_shnum; i++)
    if (streq (SECTION_NAME (section_headers + i), name))
      return section_headers + i;

  return ((void*)0);
}
