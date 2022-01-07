
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd ;


 int bfd_map_over_sections (int *,int ,int *) ;
 int gcore_copy_callback ;
 int gcore_create_callback ;
 int make_output_phdrs ;
 scalar_t__ target_find_memory_regions (int ,int *) ;

__attribute__((used)) static int
gcore_memory_sections (bfd *obfd)
{
  if (target_find_memory_regions (gcore_create_callback, obfd) != 0)
    return 0;


  bfd_map_over_sections (obfd, make_output_phdrs, ((void*)0));


  bfd_map_over_sections (obfd, gcore_copy_callback, ((void*)0));

  return 1;
}
