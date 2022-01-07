
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* section_name; char* string_section_name; scalar_t__ string_offset; } ;
typedef TYPE_1__ stab_section_names ;
typedef int bfd ;


 int bfd_map_over_sections (int *,int ,TYPE_1__*) ;
 int find_stabs_section ;
 int free (int *) ;
 int * strtab ;

__attribute__((used)) static void
dump_stabs_section (bfd *abfd, char *stabsect_name, char *strsect_name)
{
  stab_section_names s;

  s.section_name = stabsect_name;
  s.string_section_name = strsect_name;
  s.string_offset = 0;

  bfd_map_over_sections (abfd, find_stabs_section, & s);

  free (strtab);
  strtab = ((void*)0);
}
