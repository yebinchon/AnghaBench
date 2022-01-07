
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct elf_segment_map {scalar_t__ p_type; unsigned int count; TYPE_1__** sections; struct elf_segment_map* next; } ;
typedef int bfd_vma ;
typedef int bfd ;
struct TYPE_4__ {int size; int vma; } ;
typedef TYPE_1__ asection ;
struct TYPE_5__ {struct elf_segment_map* segment_map; } ;


 scalar_t__ PT_LOAD ;
 TYPE_3__* elf_tdata (int *) ;

asection *
spu_elf_check_vma (bfd *abfd, bfd_vma lo, bfd_vma hi)
{
  struct elf_segment_map *m;
  unsigned int i;

  for (m = elf_tdata (abfd)->segment_map; m != ((void*)0); m = m->next)
    if (m->p_type == PT_LOAD)
      for (i = 0; i < m->count; i++)
 if (m->sections[i]->size != 0
     && (m->sections[i]->vma < lo
  || m->sections[i]->vma > hi
  || m->sections[i]->vma + m->sections[i]->size - 1 > hi))
   return m->sections[i];

  return ((void*)0);
}
