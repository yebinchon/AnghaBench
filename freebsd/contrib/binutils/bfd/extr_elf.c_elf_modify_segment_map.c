
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct elf_segment_map {unsigned int count; scalar_t__ p_type; struct elf_segment_map* next; TYPE_1__** sections; } ;
struct elf_backend_data {int (* elf_backend_modify_segment_map ) (int *,struct bfd_link_info*) ;} ;
struct bfd_link_info {int dummy; } ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_4__ {struct elf_segment_map* segment_map; } ;
struct TYPE_3__ {int flags; } ;


 int FALSE ;
 scalar_t__ PT_LOAD ;
 int SEC_ALLOC ;
 int SEC_EXCLUDE ;
 int TRUE ;
 TYPE_2__* elf_tdata (int *) ;
 struct elf_backend_data* get_elf_backend_data (int *) ;
 int stub1 (int *,struct bfd_link_info*) ;

__attribute__((used)) static bfd_boolean
elf_modify_segment_map (bfd *abfd, struct bfd_link_info *info)
{
  struct elf_segment_map **m;
  const struct elf_backend_data *bed;






  m = &elf_tdata (abfd)->segment_map;
  while (*m)
    {
      unsigned int i, new_count;

      for (new_count = 0, i = 0; i < (*m)->count; i++)
 {
   if (((*m)->sections[i]->flags & SEC_EXCLUDE) == 0
       && (((*m)->sections[i]->flags & SEC_ALLOC) != 0
    || (*m)->p_type != PT_LOAD))
     {
       (*m)->sections[new_count] = (*m)->sections[i];
       new_count++;
     }
 }
      (*m)->count = new_count;

      if ((*m)->p_type == PT_LOAD && (*m)->count == 0)
 *m = (*m)->next;
      else
 m = &(*m)->next;
    }

  bed = get_elf_backend_data (abfd);
  if (bed->elf_backend_modify_segment_map != ((void*)0))
    {
      if (!(*bed->elf_backend_modify_segment_map) (abfd, info))
 return FALSE;
    }

  return TRUE;
}
