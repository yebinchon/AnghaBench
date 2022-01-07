
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int flagword ;
typedef int bfd ;
struct TYPE_7__ {int filepos; } ;
typedef TYPE_1__ asection ;
typedef scalar_t__ CORE_ADDR ;


 int bfd_get_section_flags (int *,TYPE_1__*) ;
 char* bfd_section_name (int *,TYPE_1__*) ;
 scalar_t__ bfd_section_size (int *,TYPE_1__*) ;
 scalar_t__ bfd_section_vma (int *,TYPE_1__*) ;
 int maint_print_section_info (char const*,int ,scalar_t__,scalar_t__,int ) ;
 scalar_t__ match_bfd_flags (char*,int ) ;
 scalar_t__ match_substring (char*,char const*) ;

__attribute__((used)) static void
print_bfd_section_info (bfd *abfd,
   asection *asect,
   void *arg)
{
  flagword flags = bfd_get_section_flags (abfd, asect);
  const char *name = bfd_section_name (abfd, asect);

  if (arg == ((void*)0) || *((char *) arg) == '\0'
      || match_substring ((char *) arg, name)
      || match_bfd_flags ((char *) arg, flags))
    {
      CORE_ADDR addr, endaddr;

      addr = bfd_section_vma (abfd, asect);
      endaddr = addr + bfd_section_size (abfd, asect);
      maint_print_section_info (name, flags, addr, endaddr, asect->filepos);
    }
}
