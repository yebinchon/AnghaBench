
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int file_ptr ;
typedef scalar_t__ bfd_size_type ;
typedef int bfd ;
struct TYPE_3__ {scalar_t__ size; int filepos; } ;
typedef TYPE_1__ asection ;


 int SEEK_SET ;
 char* bfd_alloc (int *,scalar_t__) ;
 scalar_t__ bfd_bread (char*,scalar_t__,int *) ;
 int bfd_error_no_debug_section ;
 TYPE_1__* bfd_get_section_by_name (int *,char*) ;
 scalar_t__ bfd_seek (int *,int ,int ) ;
 int bfd_set_error (int ) ;
 int bfd_tell (int *) ;

__attribute__((used)) static char *
build_debug_section (bfd *abfd)
{
  char *debug_section;
  file_ptr position;
  bfd_size_type sec_size;

  asection *sect = bfd_get_section_by_name (abfd, ".debug");

  if (!sect)
    {
      bfd_set_error (bfd_error_no_debug_section);
      return ((void*)0);
    }

  sec_size = sect->size;
  debug_section = bfd_alloc (abfd, sec_size);
  if (debug_section == ((void*)0))
    return ((void*)0);





  position = bfd_tell (abfd);
  if (bfd_seek (abfd, sect->filepos, SEEK_SET) != 0
      || bfd_bread (debug_section, sec_size, abfd) != sec_size
      || bfd_seek (abfd, position, SEEK_SET) != 0)
    return ((void*)0);
  return debug_section;
}
