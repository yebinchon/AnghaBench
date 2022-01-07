
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* filename; scalar_t__ filesize; } ;
typedef TYPE_1__ filename_and_size_t ;
typedef int bfd_boolean ;
typedef int bfd ;


 int FALSE ;
 int bfd_check_format (int *,int ) ;
 int bfd_close (int *) ;
 int bfd_map_over_sections (int *,int ,TYPE_1__*) ;
 int bfd_nonfatal (char const*) ;
 int bfd_object ;
 int * bfd_openr (char const*,int ) ;
 int got_a_section ;
 int strings_a_section ;
 int target ;

__attribute__((used)) static bfd_boolean
strings_object_file (const char *file)
{
  filename_and_size_t filename_and_size;
  bfd *abfd;

  abfd = bfd_openr (file, target);

  if (abfd == ((void*)0))

    return FALSE;




  if (!bfd_check_format (abfd, bfd_object))
    {
      bfd_close (abfd);
      return FALSE;
    }

  got_a_section = FALSE;
  filename_and_size.filename = file;
  filename_and_size.filesize = 0;
  bfd_map_over_sections (abfd, strings_a_section, & filename_and_size);

  if (!bfd_close (abfd))
    {
      bfd_nonfatal (file);
      return FALSE;
    }

  return got_a_section;
}
