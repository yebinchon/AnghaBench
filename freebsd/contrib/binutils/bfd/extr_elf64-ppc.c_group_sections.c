
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct ppc_link_hash_table {int top_index; TYPE_2__** input_list; TYPE_1__* stub_group; } ;
typedef scalar_t__ bfd_vma ;
typedef int bfd_size_type ;
typedef int bfd_boolean ;
struct TYPE_11__ {int size; size_t id; int output_offset; int owner; } ;
typedef TYPE_2__ asection ;
struct TYPE_12__ {scalar_t__ has_14bit_branch; } ;
struct TYPE_10__ {scalar_t__ toc_off; TYPE_2__* link_sec; } ;


 int FALSE ;
 TYPE_2__* PREV_SEC (TYPE_2__*) ;
 int TRUE ;
 int _ (char*) ;
 int _bfd_error_handler (int ,int ,TYPE_2__*) ;
 int free (TYPE_2__**) ;
 TYPE_4__* ppc64_elf_section_data (TYPE_2__*) ;
 int stub1 (int ,int ,TYPE_2__*) ;

__attribute__((used)) static void
group_sections (struct ppc_link_hash_table *htab,
  bfd_size_type stub_group_size,
  bfd_boolean stubs_always_before_branch)
{
  asection **list;
  bfd_size_type stub14_group_size;
  bfd_boolean suppress_size_errors;

  suppress_size_errors = FALSE;
  stub14_group_size = stub_group_size;
  if (stub_group_size == 1)
    {

      if (stubs_always_before_branch)
 {
   stub_group_size = 0x1e00000;
   stub14_group_size = 0x7800;
 }
      else
 {
   stub_group_size = 0x1c00000;
   stub14_group_size = 0x7000;
 }
      suppress_size_errors = TRUE;
    }

  list = htab->input_list + htab->top_index;
  do
    {
      asection *tail = *list;
      while (tail != ((void*)0))
 {
   asection *curr;
   asection *prev;
   bfd_size_type total;
   bfd_boolean big_sec;
   bfd_vma curr_toc;

   curr = tail;
   total = tail->size;
   big_sec = total > (ppc64_elf_section_data (tail)->has_14bit_branch
        ? stub14_group_size : stub_group_size);
   if (big_sec && !suppress_size_errors)
     (*_bfd_error_handler) (_("%B section %A exceeds stub group size"),
         tail->owner, tail);
   curr_toc = htab->stub_group[tail->id].toc_off;

   while ((prev = PREV_SEC (curr)) != ((void*)0)
   && ((total += curr->output_offset - prev->output_offset)
       < (ppc64_elf_section_data (prev)->has_14bit_branch
   ? stub14_group_size : stub_group_size))
   && htab->stub_group[prev->id].toc_off == curr_toc)
     curr = prev;
   do
     {
       prev = PREV_SEC (tail);

       htab->stub_group[tail->id].link_sec = curr;
     }
   while (tail != curr && (tail = prev) != ((void*)0));






   if (!stubs_always_before_branch && !big_sec)
     {
       total = 0;
       while (prev != ((void*)0)
       && ((total += tail->output_offset - prev->output_offset)
    < (ppc64_elf_section_data (prev)->has_14bit_branch
       ? stub14_group_size : stub_group_size))
       && htab->stub_group[prev->id].toc_off == curr_toc)
  {
    tail = prev;
    prev = PREV_SEC (tail);
    htab->stub_group[tail->id].link_sec = curr;
  }
     }
   tail = prev;
 }
    }
  while (list-- != htab->input_list);
  free (htab->input_list);

}
