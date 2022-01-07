
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ bfd_vma ;
typedef int bfd_size_type ;
struct TYPE_10__ {scalar_t__ size; int name; struct TYPE_10__* next; } ;
typedef TYPE_1__ asection ;
struct TYPE_11__ {TYPE_1__* sections; } ;


 scalar_t__ IGNORE_SECTION (TYPE_1__*) ;
 scalar_t__ TO_ADDR (scalar_t__) ;
 int _ (char*) ;
 int bfd_count_sections (TYPE_4__*) ;
 scalar_t__ bfd_section_lma (TYPE_4__*,TYPE_1__*) ;
 int einfo (int ,int ,scalar_t__,scalar_t__,int ,scalar_t__,scalar_t__) ;
 int free (TYPE_1__**) ;
 TYPE_4__* output_bfd ;
 int qsort (TYPE_1__**,size_t,int,int ) ;
 int sort_sections_by_lma ;
 TYPE_1__** xmalloc (int) ;

__attribute__((used)) static void
lang_check_section_addresses (void)
{
  asection *s, *os;
  asection **sections, **spp;
  unsigned int count;
  bfd_vma s_start;
  bfd_vma s_end;
  bfd_vma os_start;
  bfd_vma os_end;
  bfd_size_type amt;

  if (bfd_count_sections (output_bfd) <= 1)
    return;

  amt = bfd_count_sections (output_bfd) * sizeof (asection *);
  sections = xmalloc (amt);


  count = 0;
  for (s = output_bfd->sections; s != ((void*)0); s = s->next)
    {

      if (IGNORE_SECTION (s) || s->size == 0)
 continue;

      sections[count] = s;
      count++;
    }

  if (count <= 1)
    return;

  qsort (sections, (size_t) count, sizeof (asection *),
  sort_sections_by_lma);

  spp = sections;
  s = *spp++;
  s_start = bfd_section_lma (output_bfd, s);
  s_end = s_start + TO_ADDR (s->size) - 1;
  for (count--; count; count--)
    {



      os = s;
      os_start = s_start;
      os_end = s_end;
      s = *spp++;
      s_start = bfd_section_lma (output_bfd, s);
      s_end = s_start + TO_ADDR (s->size) - 1;


      if (s_end >= os_start && s_start <= os_end)
 einfo (_("%X%P: section %s [%V -> %V] overlaps section %s [%V -> %V]\n"),
        s->name, s_start, s_end, os->name, os_start, os_end);
    }

  free (sections);
}
