
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elf_segment_map {unsigned int count; int includes_filehdr; int includes_phdrs; int ** sections; int p_type; int * next; } ;
typedef unsigned int bfd_size_type ;
typedef scalar_t__ bfd_boolean ;
typedef int bfd ;
typedef int asection ;


 int PT_LOAD ;
 struct elf_segment_map* bfd_zalloc (int *,unsigned int) ;

__attribute__((used)) static struct elf_segment_map *
make_mapping (bfd *abfd,
       asection **sections,
       unsigned int from,
       unsigned int to,
       bfd_boolean phdr)
{
  struct elf_segment_map *m;
  unsigned int i;
  asection **hdrpp;
  bfd_size_type amt;

  amt = sizeof (struct elf_segment_map);
  amt += (to - from - 1) * sizeof (asection *);
  m = bfd_zalloc (abfd, amt);
  if (m == ((void*)0))
    return ((void*)0);
  m->next = ((void*)0);
  m->p_type = PT_LOAD;
  for (i = from, hdrpp = sections + from; i < to; i++, hdrpp++)
    m->sections[i - from] = *hdrpp;
  m->count = to - from;

  if (from == 0 && phdr)
    {

      m->includes_filehdr = 1;
      m->includes_phdrs = 1;
    }

  return m;
}
