
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* string_section_name; int string_offset; int section_name; } ;
typedef TYPE_1__ stab_section_names ;
typedef int bfd_byte ;
typedef int bfd ;
struct TYPE_5__ {char* name; } ;
typedef TYPE_2__ asection ;


 scalar_t__ ISDIGIT (char) ;
 int print_section_stabs (int *,char*,int *) ;
 int * read_section_stabs (int *,char*,int *) ;
 int stab_size ;
 int * stabs ;
 int stabstr_size ;
 int strlen (int ) ;
 scalar_t__ strncmp (int ,char*,int) ;
 int * strtab ;

__attribute__((used)) static void
find_stabs_section (bfd *abfd, asection *section, void *names)
{
  int len;
  stab_section_names * sought = (stab_section_names *) names;



  len = strlen (sought->section_name);




  if (strncmp (sought->section_name, section->name, len) == 0
      && (section->name[len] == 0
   || (section->name[len] == '.' && ISDIGIT (section->name[len + 1]))))
    {
      if (strtab == ((void*)0))
 strtab = read_section_stabs (abfd, sought->string_section_name,
         &stabstr_size);

      if (strtab)
 {
   stabs = (bfd_byte *) read_section_stabs (abfd, section->name,
         &stab_size);
   if (stabs)
     print_section_stabs (abfd, section->name, &sought->string_offset);
 }
    }
}
