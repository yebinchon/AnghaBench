
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct _arm_elf_section_data {int mapcount; int mapsize; TYPE_1__* map; } ;
typedef int elf32_arm_section_map ;
typedef int bfd_vma ;
typedef int asection ;
struct TYPE_4__ {char type; int vma; } ;


 TYPE_1__* bfd_malloc (int) ;
 TYPE_1__* bfd_realloc (TYPE_1__*,int) ;
 struct _arm_elf_section_data* elf32_arm_section_data (int *) ;

__attribute__((used)) static void
elf32_arm_section_map_add (asection *sec, char type, bfd_vma vma)
{
  struct _arm_elf_section_data *sec_data = elf32_arm_section_data (sec);
  unsigned int newidx;

  if (sec_data->map == ((void*)0))
    {
      sec_data->map = bfd_malloc (sizeof (elf32_arm_section_map));
      sec_data->mapcount = 0;
      sec_data->mapsize = 1;
    }

  newidx = sec_data->mapcount++;

  if (sec_data->mapcount > sec_data->mapsize)
    {
      sec_data->mapsize *= 2;
      sec_data->map = bfd_realloc (sec_data->map, sec_data->mapsize
         * sizeof (elf32_arm_section_map));
    }

  sec_data->map[newidx].vma = vma;
  sec_data->map[newidx].type = type;
}
