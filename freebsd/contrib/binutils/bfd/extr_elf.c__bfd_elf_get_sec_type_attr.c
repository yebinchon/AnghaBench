
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct elf_backend_data {struct bfd_elf_special_section const* special_sections; } ;
typedef struct bfd_elf_special_section const bfd_elf_special_section ;
typedef int bfd ;
struct TYPE_3__ {char* name; int use_rela_p; } ;
typedef TYPE_1__ asection ;


 struct bfd_elf_special_section const* _bfd_elf_get_special_section (char*,struct bfd_elf_special_section const*,int ) ;
 struct elf_backend_data* get_elf_backend_data (int *) ;
 struct bfd_elf_special_section const** special_sections ;

const struct bfd_elf_special_section *
_bfd_elf_get_sec_type_attr (bfd *abfd, asection *sec)
{
  int i;
  const struct bfd_elf_special_section *spec;
  const struct elf_backend_data *bed;


  if (sec->name == ((void*)0))
    return ((void*)0);

  bed = get_elf_backend_data (abfd);
  spec = bed->special_sections;
  if (spec)
    {
      spec = _bfd_elf_get_special_section (sec->name,
        bed->special_sections,
        sec->use_rela_p);
      if (spec != ((void*)0))
 return spec;
    }

  if (sec->name[0] != '.')
    return ((void*)0);

  i = sec->name[1] - 'b';
  if (i < 0 || i > 't' - 'b')
    return ((void*)0);

  spec = special_sections[i];

  if (spec == ((void*)0))
    return ((void*)0);

  return _bfd_elf_get_special_section (sec->name, spec, sec->use_rela_p);
}
