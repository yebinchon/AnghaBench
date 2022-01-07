
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct obj_section {TYPE_1__* the_bfd_section; int endaddr; int addr; } ;
typedef int flagword ;
typedef int bfd ;
struct TYPE_3__ {int filepos; } ;


 int bfd_get_section_flags (int *,TYPE_1__*) ;
 char* bfd_section_name (int *,TYPE_1__*) ;
 int maint_print_section_info (char const*,int ,int ,int ,int ) ;
 scalar_t__ match_bfd_flags (char*,int ) ;
 scalar_t__ match_substring (char*,char const*) ;

__attribute__((used)) static void
print_objfile_section_info (bfd *abfd,
       struct obj_section *asect,
       char *string)
{
  flagword flags = bfd_get_section_flags (abfd, asect->the_bfd_section);
  const char *name = bfd_section_name (abfd, asect->the_bfd_section);

  if (string == ((void*)0) || *string == '\0'
      || match_substring (string, name)
      || match_bfd_flags (string, flags))
    {
      maint_print_section_info (name, flags, asect->addr, asect->endaddr,
     asect->the_bfd_section->filepos);
    }
}
