
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elf_segment_map {int count; int ** sections; int p_type; int * next; } ;
typedef int bfd ;
typedef int asection ;


 int PT_DYNAMIC ;
 struct elf_segment_map* bfd_zalloc (int *,int) ;

struct elf_segment_map *
_bfd_elf_make_dynamic_segment (bfd *abfd, asection *dynsec)
{
  struct elf_segment_map *m;

  m = bfd_zalloc (abfd, sizeof (struct elf_segment_map));
  if (m == ((void*)0))
    return ((void*)0);
  m->next = ((void*)0);
  m->p_type = PT_DYNAMIC;
  m->count = 1;
  m->sections[0] = dynsec;

  return m;
}
