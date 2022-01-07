
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfd_link_info {int dummy; } ;
typedef int asection ;


 scalar_t__ bfd_elf_match_symbols_in_sections (int *,int *,struct bfd_link_info*) ;
 int * elf_next_in_group (int *) ;

__attribute__((used)) static asection *
match_group_member (asection *sec, asection *group,
      struct bfd_link_info *info)
{
  asection *first = elf_next_in_group (group);
  asection *s = first;

  while (s != ((void*)0))
    {
      if (bfd_elf_match_symbols_in_sections (s, sec, info))
 return s;

      s = elf_next_in_group (s);
      if (s == first)
 break;
    }

  return ((void*)0);
}
