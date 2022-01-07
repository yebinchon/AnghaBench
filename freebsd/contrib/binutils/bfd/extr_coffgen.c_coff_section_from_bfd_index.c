
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct bfd_section {int target_index; struct bfd_section* next; } ;
struct TYPE_3__ {struct bfd_section* sections; } ;
typedef TYPE_1__ bfd ;
typedef struct bfd_section asection ;


 int N_ABS ;
 int N_DEBUG ;
 int N_UNDEF ;
 struct bfd_section* bfd_abs_section_ptr ;
 struct bfd_section* bfd_und_section_ptr ;

asection *
coff_section_from_bfd_index (bfd *abfd, int index)
{
  struct bfd_section *answer = abfd->sections;

  if (index == N_ABS)
    return bfd_abs_section_ptr;
  if (index == N_UNDEF)
    return bfd_und_section_ptr;
  if (index == N_DEBUG)
    return bfd_abs_section_ptr;

  while (answer)
    {
      if (answer->target_index == index)
 return answer;
      answer = answer->next;
    }



  return bfd_und_section_ptr;
}
