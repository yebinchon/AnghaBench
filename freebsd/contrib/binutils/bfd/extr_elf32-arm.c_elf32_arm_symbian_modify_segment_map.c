
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct elf_segment_map {scalar_t__ p_type; struct elf_segment_map* next; } ;
struct bfd_link_info {int dummy; } ;
typedef int bfd_boolean ;
typedef int bfd ;
typedef int asection ;
struct TYPE_2__ {struct elf_segment_map* segment_map; } ;


 scalar_t__ PT_DYNAMIC ;
 struct elf_segment_map* _bfd_elf_make_dynamic_segment (int *,int *) ;
 int * bfd_get_section_by_name (int *,char*) ;
 int elf32_arm_modify_segment_map (int *,struct bfd_link_info*) ;
 TYPE_1__* elf_tdata (int *) ;

__attribute__((used)) static bfd_boolean
elf32_arm_symbian_modify_segment_map (bfd *abfd,
          struct bfd_link_info *info)
{
  struct elf_segment_map *m;
  asection *dynsec;





  dynsec = bfd_get_section_by_name (abfd, ".dynamic");
  if (dynsec)
    {
      for (m = elf_tdata (abfd)->segment_map; m != ((void*)0); m = m->next)
 if (m->p_type == PT_DYNAMIC)
   break;

      if (m == ((void*)0))
 {
   m = _bfd_elf_make_dynamic_segment (abfd, dynsec);
   m->next = elf_tdata (abfd)->segment_map;
   elf_tdata (abfd)->segment_map = m;
 }
    }


  return elf32_arm_modify_segment_map (abfd, info);
}
