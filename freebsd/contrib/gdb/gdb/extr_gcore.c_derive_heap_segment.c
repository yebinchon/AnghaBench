
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ value ;
typedef scalar_t__ bfd_vma ;
typedef scalar_t__ bfd_size_type ;
struct TYPE_11__ {TYPE_2__* sections; } ;
typedef TYPE_1__ bfd ;
struct TYPE_12__ {struct TYPE_12__* next; } ;
typedef TYPE_2__ asection ;


 int SEC_DATA ;
 int bfd_get_section_flags (TYPE_1__*,TYPE_2__*) ;
 scalar_t__ bfd_get_section_size (TYPE_2__*) ;
 scalar_t__ bfd_get_section_vma (TYPE_1__*,TYPE_2__*) ;
 int bfd_section_name (TYPE_1__*,TYPE_2__*) ;
 int builtin_type_int ;
 scalar_t__* call_function_by_hand (scalar_t__*,int,scalar_t__**) ;
 scalar_t__* find_function_in_inferior (char*) ;
 int gdb_assert (scalar_t__*) ;
 int * lookup_minimal_symbol (char*,int *,int *) ;
 scalar_t__ strcmp (char*,int ) ;
 int target_has_execution ;
 scalar_t__ value_as_long (scalar_t__*) ;
 scalar_t__* value_from_longest (int ,int ) ;

__attribute__((used)) static int
derive_heap_segment (bfd *abfd, bfd_vma *bottom, bfd_vma *top)
{
  bfd_vma top_of_data_memory = 0;
  bfd_vma top_of_heap = 0;
  bfd_size_type sec_size;
  struct value *zero, *sbrk;
  bfd_vma sec_vaddr;
  asection *sec;

  gdb_assert (bottom);
  gdb_assert (top);



  if (!target_has_execution)
    return 0;
  for (sec = abfd->sections; sec; sec = sec->next)
    {
      if (bfd_get_section_flags (abfd, sec) & SEC_DATA
   || strcmp (".bss", bfd_section_name (abfd, sec)) == 0)
 {
   sec_vaddr = bfd_get_section_vma (abfd, sec);
   sec_size = bfd_get_section_size (sec);
   if (sec_vaddr + sec_size > top_of_data_memory)
     top_of_data_memory = sec_vaddr + sec_size;
 }
    }


  if (lookup_minimal_symbol ("sbrk", ((void*)0), ((void*)0)) != ((void*)0))
    {
      sbrk = find_function_in_inferior ("sbrk");
      if (sbrk == ((void*)0))
 return 0;
    }
  else if (lookup_minimal_symbol ("_sbrk", ((void*)0), ((void*)0)) != ((void*)0))
    {
      sbrk = find_function_in_inferior ("_sbrk");
      if (sbrk == ((void*)0))
 return 0;
    }
  else
    return 0;

  zero = value_from_longest (builtin_type_int, 0);
  gdb_assert (zero);
  sbrk = call_function_by_hand (sbrk, 1, &zero);
  if (sbrk == ((void*)0))
    return 0;
  top_of_heap = value_as_long (sbrk);


  if (top_of_heap > top_of_data_memory)
    {
      *bottom = top_of_data_memory;
      *top = top_of_heap;
      return 1;
    }


  return 0;
}
